//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
//Author: akserg

part of dart_web_toolkit_showcase;

/**
 * Button keeps command item inside data attribute.
 */
class CommandButton extends ui.Button {

  /**
   * This constructor may be used by subclasses to explicitly use an existing
   * element. This element must be a &lt;button&gt; element.
   *
   * @param element the element to be used
   */
  CommandButton.fromElement(dart_html.Element element, String data) : super.fromElement(element) {
    getElement().dataAttributes["data"] = data;
    addStyleDependentName("navigation");
  }

  /**
   * Creates a button with the given HTML caption and click listener.
   *
   * @param html the HTML caption
   * @param handler the click handler
   */
  CommandButton(String html, String data, [event.ClickHandler handler = null]) : super(html, handler) {
    getElement().dataAttributes["data"] = data;
    addStyleDependentName("navigation");
  }
}
