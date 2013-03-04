/*
 * Copyright 2013 Sergey Akopkokhyants.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */

//Author: akserg

library dart_web_toolkit_showcase;

import 'dart:html' as dart_html;

import 'package:dart_web_toolkit/event.dart' as event;
import 'package:dart_web_toolkit/ui.dart' as ui;
import 'package:dart_web_toolkit/util.dart' as util;
import 'package:dart_web_toolkit/i18n.dart' as i18n;

//part 'command_button.dart';
//part 'command.dart';
//part 'command_dispatcher.dart';
part 'widget_model.dart';

void main() {
  // Main panel
  ui.DockLayoutPanel mainPanel = new ui.DockLayoutPanel(util.Unit.PX);
  // Add main panel to root layout panel
  ui.RootLayoutPanel.get().add(mainPanel);
  
  // Create Top content
  ui.HorizontalPanel topPanel = new ui.HorizontalPanel();
  topPanel.addStyleName("topPanel");
  topPanel.setSize("100%", "100%");
  // Add top panel to main
  mainPanel.addNorth(topPanel, 30.0);
  // Add Logo
  topPanel.add(new ui.Image("img/logo.png"));
  // Add Product name
  topPanel.add(new ui.Label("DWT showcase"));
  // Add Product version
  topPanel.add(new ui.Label("0.2"));
  
  
  
//  // Create split layout panel
//  ui.SplitLayoutPanel splitPanel = new ui.SplitLayoutPanel();
//  // Add split panel to root layout panel
//  ui.RootLayoutPanel.get().add(splitPanel);
//
//  // Create a static tree
//  ui.Tree staticTree = new ui.Tree();
//  staticTree.setAnimationEnabled(true);
//  // Create a container to hold the tree
//  ui.ScrollPanel staticTreeWrapper = new ui.ScrollPanel(staticTree);
//  staticTreeWrapper.setSize("100%", "100%");
//  
//  // Add staticTree wrapper to west side of split panel
//  splitPanel.addWest(staticTreeWrapper, 200.0);
//
//  // Create show placeholder
//  ui.VerticalPanel panel = new ui.VerticalPanel();
//  panel.setSize("100%", "100%");
//  panel.setVerticalAlignment(i18n.HasVerticalAlignment.ALIGN_MIDDLE);
//  panel.setHorizontalAlignment(i18n.HasHorizontalAlignment.ALIGN_CENTER);
//  splitPanel.add(panel);
//  
//  panel.add(new ui.Html("Select Widget to show from tree"));

//  // Creat command dispatcher
//  CommandDispatcher dispatcher = new CommandDispatcher(frame);
//  // Create and apply data provider to Tree component
//  dispatcher.createAndApplyDataProvider(staticTree);
}