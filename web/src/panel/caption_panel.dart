//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
//Author: akserg

library summary;

import 'dart:html' as dart_html;

import 'package:dart_web_toolkit/ui.dart' as ui;

void main() {

  //*********************************************************************************
  // Port of DnD Basic example from [https://github.com/dart-lang/dart-html5-samples]
  //*********************************************************************************

  ui.FlowPanel columns = new ui.FlowPanel();
  columns.getElement().id = "columns";

  ui.RootPanel.get("testId").add(columns);
}
