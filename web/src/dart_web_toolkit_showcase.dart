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

part 'command_button.dart';
part 'command.dart';
part 'command_dispatcher.dart';

void main() {
  // Create split layout panel
  ui.SplitLayoutPanel splitPanel = new ui.SplitLayoutPanel();
  // Add split panel to root layout panel
  ui.RootLayoutPanel.get().add(splitPanel);

  // Create a static tree
  ui.Tree staticTree = new ui.Tree();
  staticTree.setAnimationEnabled(true);
  // Create a container to hold the tree
  ui.ScrollPanel staticTreeWrapper = new ui.ScrollPanel(staticTree);
  staticTreeWrapper.setSize("100%", "100%");
  
  // Add staticTree wrapper to west side of split panel
  splitPanel.addWest(staticTreeWrapper, 200.0);

  // Create Frame
  ui.Frame frame = new ui.Frame();
  frame.setSize("100%", "100%");
  frame.addStyleDependentName("demo");
  splitPanel.add(frame);

  // Creat ecommand dispatcher
  CommandDispatcher dispatcher = new CommandDispatcher(frame);
  // Create and apply data provider to Tree component
  dispatcher.createAndApplyDataProvider(staticTree);
}