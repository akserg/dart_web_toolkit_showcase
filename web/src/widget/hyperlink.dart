//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
//Author: akserg

library summary;

import 'dart:html' as dart_html;

import 'package:dart_web_toolkit/ui.dart' as ui;

void main() {
  ui.SimplePanel panel = new ui.SimplePanel();
  panel.setSize("200px", "30px");

  ui.Hyperlink widget = new ui.Hyperlink("Home Page", false, "Home");
  panel.addStyleName("demo-panel");
  panel.add(widget);
  
  ui.RootPanel.get().add(panel);
}