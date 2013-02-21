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

library summary;

import 'dart:html' as dart_html;

import 'package:dart_web_toolkit/event.dart' as event;
import 'package:dart_web_toolkit/ui.dart' as ui;

void main() {

  ui.VerticalPanel vpanel = new ui.VerticalPanel();

  ui.HorizontalPanel pushPanel = new ui.HorizontalPanel();
  pushPanel.spacing = 10;

  ui.HorizontalPanel togglePanel = new ui.HorizontalPanel();
  togglePanel.spacing = 10;

  // Combine all the panels
  vpanel.add(new ui.Html("Custom Button"));
  vpanel.add(pushPanel);
  vpanel.add(new ui.Html("<br><br>PushButtons and ToggleButtons allow you to customize the look of your buttons"));
  vpanel.add(togglePanel);

  ui.PushButton normalPushButton = new ui.PushButton.fromImage(new ui.Image("img/darts.jpg"));
  pushPanel.add(normalPushButton);

  // Add a disabled PushButton
  ui.PushButton disabledPushButton = new ui.PushButton.fromImage(new ui.Image("img/darts.jpg"));
  disabledPushButton.enabled = false;
  pushPanel.add(disabledPushButton);

  // Add a normal ToggleButton
  ui.ToggleButton normalToggleButton = new ui.ToggleButton.fromImage(new ui.Image("img/darts.jpg"));
  togglePanel.add(normalToggleButton);

  // Add a disabled ToggleButton
  ui.ToggleButton disabledToggleButton = new ui.ToggleButton.fromImage(new ui.Image("img/darts.jpg"));
  disabledToggleButton.enabled = false;
  togglePanel.add(disabledToggleButton);

  ui.RootPanel.get().add(vpanel);
}