//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
//Author: akserg

library summary;

import 'dart:html' as dart_html;

import 'package:dart_web_toolkit/ui.dart' as ui;
import 'package:dart_web_toolkit/event.dart' as event;

void main() {

  //*********************************************************************************
  // Port of DnD Basic example from [https://github.com/dart-lang/dart-html5-samples]
  //*********************************************************************************

  ui.CaptionPanel panel = new ui.CaptionPanel("Caption Goes Here");
  ui.RootPanel.get().add(panel);

  panel.setContentWidget(new ui.Label("The main, wrapped widget goes here."));

  // Set up some style - normally you'd do this in CSS, but it's
  // easier to show like this

  event.Dom.setStyleAttribute(panel.getElement(), "border", "3px solid #00c");
  event.Dom.setStyleAttribute(panel.getContentWidget().getElement(), "margin", "5px 10px 10px 10px");
  event.Dom.setStyleAttribute(panel.getContentWidget().getElement(), "padding", "10px 10px 10px 10px");
  event.Dom.setStyleAttribute(panel.getContentWidget().getElement(), "border", "1px solid #ccf");
}
