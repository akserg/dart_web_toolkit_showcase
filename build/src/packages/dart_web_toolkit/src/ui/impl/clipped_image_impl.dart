//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
//Author: akserg

part of dart_web_toolkit_ui;

/**
 * Uses a combination of a clear image and a background image to clip all except
 * a desired portion of an underlying image.
 *
 * Do not use this class - it is used for implementation only, and its methods
 * may change in the future.
 */
class ClippedImageImpl {

  String clearImage = DWT.getModuleBaseURL() + "resource/images/clear.gif";

  dart_html.Element createStructure(SafeUri url, int left, int top, int width, int height) {
    dart_html.ImageElement img = new dart_html.ImageElement();
    img.src = clearImage;
    //
    String style = "url(\"${url.asString()}\") no-repeat ${-left}px ${-top}px";
    img.style.background = style;
    img.style.width = "${width}px";
    img.style.height = "${height}px";
    img.onLoad.listen((dart_html.Event evt) {
      img.dataset[DomImpl.UNHANDLED_EVENT_ATTR] = BrowserEvents.LOAD;
    });
    //
    return img;
  }

  SafeHtml getSafeHtml(SafeUri url, int left, int top, int width, int height) {
    String style = "url(\"${url.asString()}\") no-repeat ${-left}px ${-top}px";
    String res = "<img onload='this.data-${DomImpl.UNHANDLED_EVENT_ATTR}=\"load\";' src='${clearImage}' style='background:${style}; width: ${width}px; height: ${height}px' border='0'>";
    return new SafeHtmlString(res);
  }

  dart_html.ImageElement getImgElement(Image image) {
    return image.getElement() as dart_html.ImageElement;
  }

  void adjust(dart_html.ImageElement img, SafeUri url, int left, int top, int width, int height) {
    String style = "url(\"${url.asString()}\") no-repeat -${left}px -${top}px";
    img.style.background = style;
    img.style.width = width.toString() + Unit.PX.value;
    img.style.height = height.toString() + Unit.PX.value;
  }
}
