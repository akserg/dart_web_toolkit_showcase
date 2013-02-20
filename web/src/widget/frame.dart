//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
//Author: akserg

library summary;

import 'dart:html' as dart_html;

import 'package:dart_web_toolkit/event.dart' as event;
import 'package:dart_web_toolkit/ui.dart' as ui;

void main() {
  
  ui.VerticalPanel vPanel = new ui.VerticalPanel();
  vPanel.spacing = 10;
  
  vPanel.add(new ui.Label("This is a frame:"));
  
  ui.Frame frame = new ui.Frame("frame_test.html");
  frame.setWidth("100%");
  frame.setHeight("450px");
  vPanel.add(frame);
  
  ui.RootPanel.get().add(vPanel);
}