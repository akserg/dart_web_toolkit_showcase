//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
//Author: akserg

part of dart_web_toolkit_ui;

/**
 * A panel that lays its child widgets out "docked" at its outer edges, and
 * allows its last widget to take up the remaining space in its center.
 *
 * <p>
 * This widget will <em>only</em> work in standards mode, which requires that
 * the HTML page in which it is run have an explicit &lt;!DOCTYPE&gt;
 * declaration.
 * </p>
 *
 * <p>
 * <h3>Example</h3>
 * {@example com.google.gwt.examples.DockLayoutPanelExample}
 * </p>
 *
 * <h3>Use in UiBinder Templates</h3>
 * <p>
 * DockLayoutPanel elements in
 * {@link com.google.gwt.uibinder.client.UiBinder UiBinder} templates
 * lay out their children in elements tagged with the cardinal directions,
 * and center:
 *
 * <p>
 * <dl>
 * <dt>&lt;g:center>
 * <dt>&lt;g:north>
 * <dt>&lt;g:south>
 * <dt>&lt;g:west>
 * <dt>&lt;g:east>
 * </dl>
 *
 * <p>
 * Each child can hold only widget, and there can be only one &lt;g:center>.
 * However, there can be any number of the directional children.
 *<p>
 * (Note that the tags of the child elements are not
 * capitalized. This is meant to signal that they are not runtime objects,
 * and so cannot have a <code>ui:field</code> attribute.)
 * <p>
 * For example:<pre>
 * &lt;g:DockLayoutPanel unit='EM'>
 *   &lt;g:north size='5'>
 *     &lt;g:Label>Top&lt;/g:Label>
 *   &lt;/g:north>
 *   &lt;g:center>
 *     &lt;g:Label>Body&lt;/g:Label>
 *   &lt;/g:center>
 *   &lt;g:west size='192'>
 *     &lt;g:HTML>
 *       &lt;ul>
 *         &lt;li>Sidebar&lt;/li>
 *         &lt;li>Sidebar&lt;/li>
 *         &lt;li>Sidebar&lt;/li>
 *       &lt;/ul>
 *     &lt;/g:HTML>
 *   &lt;/g:west>
 * &lt;/g:DockLayoutPanel>
 * </pre>
 */
class DockLayoutPanel extends ComplexPanel implements AnimatedLayout, RequiresResize, ProvidesResize {
  Unit _unit;
  Widget _center;
  Layout _layout;
  LayoutCommand _layoutCmd;
  double _filledWidth = 0.0;
  double _filledHeigh = 0.0;

  /**
   * Creates an empty dock panel.
   *
   * @param unit the unit to be used for layout
   */
  DockLayoutPanel(this._unit) {
    setElement(new dart_html.DivElement());
    _layout = new Layout(getElement());
    _layoutCmd = new _DockAnimateCommand(this, _layout);
  }

  //*********
  // Children
  //*********

  /**
   * Adds a widget at the center of the dock. No further widgets may be added
   * after this one.
   *
   * @param widget the widget to be added
   */
  void add(Widget widget) {
    _insert(widget, DockLayoutConstant.CENTER, 0.0, null);
  }

  //*****

  /**
   * Adds a widget to the east edge of the dock.
   *
   * @param widget the widget to be added
   * @param size the child widget's size
   */
  void addEast(Widget widget, double size) {
    _insert(widget, DockLayoutConstant.EAST, size, null);
  }

  /**
   * Overloaded version for IsWidget.
   *
   * @see #addEast(Widget,double)
   */
  void addIsWidgetEast(IsWidget widget, double size) {
    this.addEast(widget.asWidget(), size);
  }

  /**
   * Adds a widget to the end of the line. In LTR mode, the widget is added to
   * the east. In RTL mode, the widget is added to the west.
   *
   * @param widget the widget to be added
   * @param size the child widget's size
   */
  void addLineEnd(Widget widget, double size) {
    _insert(widget, DockLayoutConstant.LINE_END, size, null);
  }

  /**
   * Adds a widget to the start of the line. In LTR mode, the widget is added to
   * the west. In RTL mode, the widget is added to the east.
   *
   * @param widget the widget to be added
   * @param size the child widget's size
   */
  void addLineStart(Widget widget, double size) {
    _insert(widget, DockLayoutConstant.LINE_START, size, null);
  }

  /**
   * Adds a widget to the north edge of the dock.
   *
   * @param widget the widget to be added
   * @param size the child widget's size
   */
  void addNorth(Widget widget, double size) {
    _insert(widget, DockLayoutConstant.NORTH, size, null);
  }

  /**
   * Overloaded version for IsWidget.
   *
   * @see #addNorth(Widget,double)
   */
  void addIsWidgetNorth(IsWidget widget, double size) {
    this.addNorth(widget.asWidget(), size);
  }

  /**
   * Adds a widget to the south edge of the dock.
   *
   * @param widget the widget to be added
   * @param size the child widget's size
   */
  void addSouth(Widget widget, double size) {
    _insert(widget, DockLayoutConstant.SOUTH, size, null);
  }

  /**
   * Overloaded version for IsWidget.
   *
   * @see #addSouth(Widget,double)
   */
  void addIsWidgetSouth(IsWidget widget, double size) {
    this.addSouth(widget.asWidget(), size);
  }

  /**
   * Adds a widget to the west edge of the dock.
   *
   * @param widget the widget to be added
   * @param size the child widget's size
   */
  void addWest(Widget widget, double size) {
    _insert(widget, DockLayoutConstant.WEST, size, null);
  }

  /**
   * Overloaded version for IsWidget.
   *
   * @see #addWest(Widget,double)
   */
  void addIsWidgetWest(IsWidget widget, double size) {
    this.addWest(widget.asWidget(), size);
  }

  /**
   * Adds a widget to the east edge of the dock, inserting it before an existing
   * widget.
   *
   * @param widget the widget to be added
   * @param size the child widget's size
   * @param before the widget before which to insert the new child, or
   *          <code>null</code> to append
   */
  void insertEast(Widget widget, double size, Widget before) {
    _insert(widget, DockLayoutConstant.EAST, size, before);
  }

  /**
   * Adds a widget to the start of the line, inserting it before an existing
   * widget. In LTR mode, the widget is added to the east. In RTL mode, the
   * widget is added to the west.
   *
   * @param widget the widget to be added
   * @param size the child widget's size
   * @param before the widget before which to insert the new child, or
   *          <code>null</code> to append
   */
  void insertLineEnd(Widget widget, double size, Widget before) {
    _insert(widget, DockLayoutConstant.LINE_END, size, before);
  }

  /**
   * Adds a widget to the end of the line, inserting it before an existing
   * widget. In LTR mode, the widget is added to the west. In RTL mode, the
   * widget is added to the east.
   *
   * @param widget the widget to be added
   * @param size the child widget's size
   * @param before the widget before which to insert the new child, or
   *          <code>null</code> to append
   */
  void insertLineStart(Widget widget, double size, Widget before) {
    _insert(widget, DockLayoutConstant.LINE_START, size, before);
  }

  /**
   * Adds a widget to the north edge of the dock, inserting it before an
   * existing widget.
   *
   * @param widget the widget to be added
   * @param size the child widget's size
   * @param before the widget before which to insert the new child, or
   *          <code>null</code> to append
   */
  void insertNorth(Widget widget, double size, Widget before) {
    _insert(widget, DockLayoutConstant.NORTH, size, before);
  }

  /**
   * Adds a widget to the south edge of the dock, inserting it before an
   * existing widget.
   *
   * @param widget the widget to be added
   * @param size the child widget's size
   * @param before the widget before which to insert the new child, or
   *          <code>null</code> to append
   */
  void insertSouth(Widget widget, double size, Widget before) {
    _insert(widget, DockLayoutConstant.SOUTH, size, before);
  }

  /**
   * Adds a widget to the west edge of the dock, inserting it before an existing
   * widget.
   *
   * @param widget the widget to be added
   * @param size the child widget's size
   * @param before the widget before which to insert the new child, or
   *          <code>null</code> to append
   */
  void insertWest(Widget widget, double size, Widget before) {
    _insert(widget, DockLayoutConstant.WEST, size, before);
  }

  /**
   * Adds a widget to the specified edge of the dock. If the widget is already a
   * child of this panel, this method behaves as though {@link #remove(Widget)}
   * had already been called.
   *
   * @param widget the widget to be added
   * @param direction the widget's direction in the dock
   * @param before the widget before which to insert the new child, or
   *          <code>null</code> to append
   */
  void _insert(Widget widget, DockLayoutConstant direction, double size, Widget before) {
    assertIsChild(before);

    // Validation.
    if (before == null) {
      assert (_center == null); // : "No widget may be added after the CENTER widget";
    } else {
      assert (direction != DockLayoutConstant.CENTER); // : "A CENTER widget must always be added last";
    }

    // Detach new child.
    widget.removeFromParent();

    // Logical attach.
    WidgetCollection children = getChildren();
    if (before == null) {
      children.add(widget);
    } else {
      int index = children.indexOf(before);
      children.insert(widget, index);
    }

    if (direction == DockLayoutConstant.CENTER) {
      _center = widget;
    }

    // Physical attach.
    Layer layer = _layout.attachChild(widget.getElement(), before:((before != null) ? before.getElement() : null), userObject:widget);
    LayoutData data = new LayoutData(direction, size, layer);
    widget.setLayoutData(data);

    // Adopt.
    adopt(widget);

    // Update the layout.
    animate(0);
  }

  //**********
  // Animation
  //**********

  void animate(int duration, [LayoutAnimationCallback callback = null]) {
    _layoutCmd.schedule(duration, callback);
  }

  void forceLayout() {
    _layoutCmd.cancel();
    _doLayout();
    _layout.layout();
    onResize();
  }

  //***********
  // LayoutData
  //***********

  /**
   * Gets the container element wrapping the given child widget.
   *
   * @param child
   * @return the widget's container element
   */
  dart_html.Element getWidgetContainerElement(Widget child) {
    assertIsChild(child);
    return (child.getLayoutData() as LayoutData).layer.getContainerElement();
  }

  /**
   * Gets the layout direction of the given child widget.
   *
   * @param child the widget to be queried
   * @return the widget's layout direction, or <code>null</code> if it is not a
   *         child of this panel
   * @throws AssertionError if the widget is not a child and assertions are enabled
   */
  DockLayoutConstant getWidgetDirection(Widget child) {
    assertIsChild(child);
    if (child.getParent() != this) {
      return null;
    }
    return (child.getLayoutData() as LayoutData).direction;
  }

  /**
   * Gets the layout size of the given child widget.
   *
   * @param child the widget to be queried
   * @return the widget's layout size, or <code>null</code> if it is not a child of
   *         this panel
   * @throws AssertionError if the widget is not a child and assertions are enabled
   */
  double getWidgetSize(Widget child) {
    assertIsChild(child);
    if (child.getParent() != this) {
      return null;
    }
    return (child.getLayoutData() as LayoutData).size;
  }

  //***********

  void onResize() {
    for (Widget child in getChildren()) {
      if (child is RequiresResize) {
        (child as RequiresResize).onResize();
      }
    }
  }

  bool remove(Widget w) {
    bool removed = super.remove(w);
    if (removed) {
      // Clear the _center widget.
      if (w == _center) {
        _center = null;
      }

      LayoutData data = w.getLayoutData() as LayoutData;
      _layout.removeChild(data.layer);
    }

    return removed;
  }

  //************

  /**
   * Sets whether or not the given widget should be hidden.
   *
   * @param widget the widget to hide or display
   * @param hidden true to hide the widget, false to display it
   */
  void setWidgetHidden(Widget widget, bool hidden) {
    assertIsChild(widget);

    LayoutData data = widget.getLayoutData() as LayoutData;
    if (data.hidden == hidden) {
      return;
    }

    data.hidden = hidden;
    animate(0);
  }

  /**
   * Updates the size of the widget passed in as long as it is not the center
   * widget and updates the layout of the dock.
   *
   * @param widget the widget that needs to update its size
   * @param size the size to update the widget to
   */
  void setWidgetSize(Widget widget, double size) {
    assertIsChild(widget);
    LayoutData data = widget.getLayoutData() as LayoutData;

    assert (data.direction != DockLayoutConstant.CENTER); // : "The size of the center widget can not be updated.";

    data.size = size;

    // Update the layout.
    animate(0);
  }

  Widget getCenter() {
    return _center;
  }

  double getCenterHeight() {
    return getElement().client.height / _layout.getUnitSize(_unit, true) - _filledHeigh;
  }

  double getCenterWidth() {
    return getElement().client.width / _layout.getUnitSize(_unit, false) - _filledWidth;
  }

  /**
   * Resolve the specified direction based on the current locale. If the
   * direction is {@link DockLayoutConstant#LINE_START} or {@link DockLayoutConstant#LINE_END},
   * the return value will be one of {@link DockLayoutConstant#EAST} or
   * {@link DockLayoutConstant#WEST} depending on the RTL mode of the locale. For all
   * other directions, the specified value is returned.
   *
   * @param direction the specified direction
   * @return the locale
   */
  DockLayoutConstant getResolvedDirection(DockLayoutConstant direction) {
    if (direction == DockLayoutConstant.LINE_START) {
      return LocaleInfo.getCurrentLocale().isRTL() ? DockLayoutConstant.EAST : DockLayoutConstant.WEST;
    } else if (direction == DockLayoutConstant.LINE_END) {
      return LocaleInfo.getCurrentLocale().isRTL() ? DockLayoutConstant.WEST : DockLayoutConstant.EAST;
    }
    return direction;
  }

  Unit getUnit() {
    return _unit;
  }

  //************

  void onAttach() {
    super.onAttach();
    _layout.onAttach();
  }

  void onDetach() {
    super.onDetach();
    _layout.onDetach();
  }

  void assertIsChild(Widget widget) {
    assert ((widget == null) || (widget.getParent() == this)); // : "The specified widget is not a child of this panel";
  }

  //*******
  // Layout
  //*******

  void _doLayout() {
    double left = 0.0;
    double top = 0.0;
    double right = 0.0;
    double bottom = 0.0;

    for (Widget child in getChildren()) {
      LayoutData data = child.getLayoutData() as LayoutData;
      Layer layer = data.layer;

      if (data.hidden) {
        layer.setVisible(false);
        continue;
      }

      switch (getResolvedDirection(data.direction)) {
        case DockLayoutConstant.NORTH:
          layer.setLeftRight(left, _unit, right, _unit);
          layer.setTopHeight(top, _unit, data.size, _unit);
          top += data.size;
          break;

        case DockLayoutConstant.SOUTH:
          layer.setLeftRight(left, _unit, right, _unit);
          layer.setBottomHeight(bottom, _unit, data.size, _unit);
          bottom += data.size;
          break;

        case DockLayoutConstant.WEST:
          layer.setTopBottom(top, _unit, bottom, _unit);
          layer.setLeftWidth(left, _unit, data.size, _unit);
          left += data.size;
          break;

        case DockLayoutConstant.EAST:
          layer.setTopBottom(top, _unit, bottom, _unit);
          layer.setRightWidth(right, _unit, data.size, _unit);
          right += data.size;
          break;

        case DockLayoutConstant.CENTER:
          layer.setLeftRight(left, _unit, right, _unit);
          layer.setTopBottom(top, _unit, bottom, _unit);
          break;
      }

      // First set the size, then ensure it's visible
      layer.setVisible(true);
    }

    _filledWidth = left + right;
    _filledHeigh = top + bottom;
  }
}

/**
 * Layout data associated with each widget.
 */
class LayoutData {
  DockLayoutConstant direction;
  double oldSize, size;
  double originalSize;
  bool hidden = false;
  Layer layer;

  LayoutData(this.direction, this.size, this.layer);
}

class _DockAnimateCommand extends LayoutCommand {

  DockLayoutPanel _panel;

  _DockAnimateCommand(this._panel, Layout layout) : super(layout);

  void doBeforeLayout() {
    _panel._doLayout();
  }
}