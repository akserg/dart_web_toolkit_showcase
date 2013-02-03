//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
//Author: akserg

library summary;

import 'dart:html' as dart_html;

import 'package:dart_web_toolkit/event.dart' as event;
import 'package:dart_web_toolkit/ui.dart' as ui;

void main() {

  // Create a panel to align the widgets
  ui.HorizontalPanel hPanel = new ui.HorizontalPanel();
  hPanel.spacing = 10;

  // Add a normal button
  ui.Button normalButton = new ui.Button(
      "Normal Button", new event.ClickHandlerAdapter((event.ClickEvent event) {
        dart_html.window.alert("Stop poking me!");
      }));
  hPanel.add(normalButton);

  // Add a disabled button
  ui.Button disabledButton = new ui.Button("Disabled Button");
  disabledButton.enabled = false;
  hPanel.add(disabledButton);

  ui.RootPanel.get().add(hPanel);
}