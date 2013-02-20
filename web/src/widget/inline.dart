//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
//Author: akserg

library summary;

import 'dart:html' as dart_html;

import 'package:dart_web_toolkit/event.dart' as event;
import 'package:dart_web_toolkit/ui.dart' as ui;

void main() {
  ui.Html html = new ui.Html("<div id='fred' style='background-color: yellow; border: 1px dotted red; width: 200px; text-align: center;'> This is an HTML Widget </div>");
  ui.RootPanel.get().add(html);

  ui.InlineHtml inlineHtml = new ui.InlineHtml("<div id='fred' style='background-color: red; border: 1px dotted green; width: 200px; text-align: center;'> This is an INLINE HTML Widget </div>");
  ui.RootPanel.get().add(inlineHtml);

  ui.Hyperlink inlineHyperlink = new ui.Hyperlink("Inline Hyperlink", false, "Home");
  ui.RootPanel.get().add(inlineHyperlink);
  
  ui.InlineLabel inlineLabel = new ui.InlineLabel("This is Inline Label");
  ui.RootPanel.get().add(inlineLabel);
}