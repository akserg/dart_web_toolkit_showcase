//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
//Author: akserg

part of dart_web_toolkit_ui;

class FocusImplDefault implements FocusImpl {

  /**
   * Remove focus from [Element].
   */
  void blur(dart_html.Element elem) {
    elem.blur();
  }

  /**
   * Create focusable element.
   */
  dart_html.Element createFocusable() {
    dart_html.DivElement div = new dart_html.DivElement();
    div.attributes['tabIndex'] = '0';
    return div;
  }

  /**
   * Set focus on [Element].
   */
  void focus(dart_html.Element elem) {
    elem.focus();
  }

  /**
   * Return [Element] tab index.
   */
  int getTabIndex(dart_html.Element elem) {
    return elem.tabIndex;
  }

  /**
   * Set [Element] tab [index].
   */
  void setTabIndex(dart_html.Element elem, int index) {
    elem.attributes['tabIndex'] = index.toString();
  }

  /**
   * Set Access Key for keyboard navigation.
   */
  void setAccessKey(dart_html.Element elem, int key) {
//    elem.accessKey = key.toString();
  }
}
