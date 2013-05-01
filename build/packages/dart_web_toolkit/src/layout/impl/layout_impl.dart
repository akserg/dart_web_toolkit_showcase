//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
//Author: akserg

part of dart_web_toolkit_layout;

/**
 * Default implementation, which works with all browsers except for IE6. It uses
 * only the "top", "left", "bottom", "right", "width", and "height" CSS
 * properties.
 *
 * Note: This implementation class has state, so {@link Layout} must create a
 * new instance for each layout-parent.
 */
class LayoutImpl {

  static dart_html.DivElement fixedRuler;
  static bool _initialised = false;

  factory LayoutImpl.browserDependent() {
    if (!_initialised) {
      _initialised = true;
      fixedRuler = createRuler(Unit.CM, Unit.CM);
      dart_html.document.body.append(fixedRuler);
    }
    return new LayoutImpl._internal();
  }

  static dart_html.DivElement createRuler(Unit widthUnit, Unit heightUnit) {
    dart_html.DivElement ruler = new dart_html.DivElement();
    ruler.innerHtml = "&nbsp;";
    ruler.style.position = Position.ABSOLUTE.value;
    ruler.style.zIndex = "-32767";

    // Position the ruler off the top edge, double the size just to be
    // extra sure it doesn't show up on the screen.
    ruler.style.top = "-20" + heightUnit.value;

    // Note that we are making the ruler element 10x10, because some browsers
    // generate non-integral ratios (e.g., 1em == 13.3px), so we need a little
    // extra precision.
    ruler.style.width = "10" + widthUnit.value;
    ruler.style.height = "10" + heightUnit.value;
    return ruler;
  }

  LayoutImpl._internal();

  dart_html.DivElement relativeRuler;

  dart_html.Element attachChild(dart_html.Element parent, dart_html.Element child, dart_html.Element before) {
    dart_html.DivElement container = new dart_html.DivElement();
    container.append(child);

    container.style.position = Position.ABSOLUTE.value;
    container.style.overflow = Overflow.HIDDEN.value;
    // I have added that code here because without it it doesn't show itself and child elements
    container.style.left = "0" + Unit.PX.value;
    container.style.top = "0" + Unit.PX.value;
    container.style.right = "0" + Unit.PX.value;
    container.style.bottom = "0" + Unit.PX.value;
    //
    fillParent(child);

    dart_html.Element beforeContainer = null;
    if (before != null) {
      beforeContainer = before.parent;
      assert (beforeContainer.parent == parent); // : "Element to insert before must be a sibling";
    }
    parent.insertBefore(container, beforeContainer);
    return container;
  }

  void fillParent(dart_html.Element elem) {
    elem.style.position = Position.ABSOLUTE.value;
    elem.style.left = "0" + Unit.PX.value;
    elem.style.top = "0" + Unit.PX.value;
    elem.style.right = "0" + Unit.PX.value;
    elem.style.bottom = "0" + Unit.PX.value;
  }

  /**
   * @param parent the parent element
   */
  void finalizeLayout(dart_html.Element parent) {
  }

  double getUnitSizeInPixels(dart_html.Element parent, Unit unit, bool vertical) {
    if (unit == null) {
      return 1.0;
    }

    switch (unit) {
      case Unit.PCT:
        return (vertical ? parent.client.height : parent.client.width) / 100.0;
      case Unit.EM:
        return relativeRuler.offset.width / 10.0;
      case Unit.EX:
        return relativeRuler.offset.height / 10.0;
      case Unit.CM:
        return fixedRuler.offset.width * 0.1; // 1.0 cm / cm
      case Unit.MM:
        return fixedRuler.offset.width * 0.01; // 0.1 cm / mm
      case Unit.IN:
        return fixedRuler.offset.width * 0.254; // 2.54 cm / in
      case Unit.PT:
        return fixedRuler.offset.width * 0.00353; // 0.0353 cm / pt
      case Unit.PC:
        return fixedRuler.offset.width * 0.0423; // 0.423 cm / pc

      case Unit.PX:
      default:
        return 1.0;
    }
  }

  void initParent(dart_html.Element parent) {
    parent.style.position = Position.RELATIVE.value;
    parent.append(relativeRuler = createRuler(Unit.EM, Unit.EX));
  }

  void layout(Layer layer) {
    if (layer.visible) {
      layer.container.style.display = "";
    } else {
      layer.container.style.display = Display.NONE.value;
    }

    layer.container.style.left = layer.setLeft ? (layer.left.toString() + layer.leftUnit.value) : "";
    layer.container.style.top = layer.setTop ? (layer.top.toString() + layer.topUnit.value) : "";
    layer.container.style.right = layer.setRight ? (layer.right.toString() + layer.rightUnit.value) : "";
    layer.container.style.bottom = layer.setBottom ? (layer.bottom.toString() + layer.bottomUnit.value) : "";
    layer.container.style.width = layer.setWidth ? (layer.width.toString() + layer.widthUnit.value) : "";
    layer.container.style.height = layer.setHeight ? (layer.height.toString() + layer.heightUnit.value) : "";

    switch (layer.hPos) {
      case Alignment.BEGIN:
        layer.child.style.left = "0" + Unit.PX.value;
        layer.child.style.right = "";
        break;
      case Alignment.END:
        layer.child.style.left = "";
        layer.child.style.right = "0" + Unit.PX.value;
        break;
      case Alignment.STRETCH:
        layer.child.style.left = "0" + Unit.PX.value;
        layer.child.style.right = "0" + Unit.PX.value;
        break;
    }

    switch (layer.vPos) {
      case Alignment.BEGIN:
        layer.child.style.top = "0" + Unit.PX.value;
        layer.child.style.bottom = "";
        break;
      case Alignment.END:
        layer.child.style.top = "";
        layer.child.style.bottom = "0" + Unit.PX.value;
        break;
      case Alignment.STRETCH:
        layer.child.style.top = "0" + Unit.PX.value;
        layer.child.style.bottom = "0" + Unit.PX.value;
        break;
    }
  }

  void onAttach(dart_html.Element parent) {
    // Do nothing. This exists only to help LayoutImplIE6 avoid memory leaks.
  }

  void onDetach(dart_html.Element parent) {
    // Do nothing. This exists only to help LayoutImplIE6 avoid memory leaks.
  }

  void removeChild(dart_html.Element container, dart_html.Element child) {
    container.remove();

    // We want this code to be resilient to the child having already been
    // removed from its container (perhaps by widget code).
    if (child.parent == container) {
      child.remove();
    }

    // Cleanup child styles set by fillParent().
    child.style.position = "";
    child.style.left = "";
    child.style.top = "";
    child.style.width = "";
    child.style.height = "";
  }
}
