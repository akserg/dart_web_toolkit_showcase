//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
//Author: akserg

library summary;

import 'dart:html' as dart_html;

import 'package:dart_web_toolkit/event.dart' as event;
import 'package:dart_web_toolkit/ui.dart' as ui;

void main() {

  // Create a panel to layout the widgets
  ui.VerticalPanel vpanel1 = new ui.VerticalPanel();
  vpanel1.spacing = 5;

  ui.DoubleBox dBox = new ui.DoubleBox();
  dBox.setMaxLength(10);
  dBox.setVisibleLength(5);
  dBox.setValue(123.4543453);
  vpanel1.add(dBox);

  ui.IntegerBox iBox = new ui.IntegerBox();
  iBox.setMaxLength(10);
  iBox.setVisibleLength(5);
  iBox.setValue(123123);
  vpanel1.add(iBox);

  ui.RootPanel.get().add(vpanel1);
}