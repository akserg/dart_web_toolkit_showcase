//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
//Author: akserg

library dart_web_toolkit_showcase;

import 'dart:html' as dart_html;

import 'package:dart_web_toolkit/event.dart' as event;
import 'package:dart_web_toolkit/ui.dart' as ui;
import 'package:dart_web_toolkit/util.dart' as util;
import 'package:dart_web_toolkit/i18n.dart' as i18n;

part 'command_button.dart';
part 'command_dispatcher.dart';

void main() {
  ui.SplitLayoutPanel splitPanel = new ui.SplitLayoutPanel();
  ui.RootLayoutPanel.get().add(splitPanel);

  // Create WidgetsPanel
  ui.VerticalPanel widgetsPanel = new ui.VerticalPanel();
  widgetsPanel.spacing = 4;
  widgetsPanel.setWidth("100%");

  // Create PanelsPanel
  ui.VerticalPanel panelsPanel = new ui.VerticalPanel();
  panelsPanel.spacing = 4;
  panelsPanel.setWidth("100%");

  // Create StackPanel
  ui.StackPanel stackPanel = new ui.StackPanel();
  stackPanel.setHeight("100%");
  stackPanel.setWidth("100%");
  //
  stackPanel.add(widgetsPanel, "Widgets", false);
  stackPanel.add(panelsPanel, "Panels", false);
  //
  splitPanel.addWest(stackPanel, 200.0);

  // Create Frame
  ui.Frame frame = new ui.Frame();
  frame.setSize("100%", "100%");
  frame.addStyleDependentName("demo");
  splitPanel.add(frame);

  CommandDispatcher dispatcher = new CommandDispatcher(frame);
  dispatcher.fillWidgetsInPanel(widgetsPanel);
  dispatcher.fillPanelsInPanel(panelsPanel);
}