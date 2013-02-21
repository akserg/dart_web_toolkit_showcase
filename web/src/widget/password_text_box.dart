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

import 'package:dart_web_toolkit/ui.dart' as ui;

void main() {
  // Create a panel to layout the widgets
  ui.Grid grid = new ui.Grid(5, 2);
  
  grid.setWidget(0, 0, new ui.Label("Normal Text:"));
  // Add a normal and disabled text box
  ui.TextBox normalText = new ui.TextBox();
  // Set the normal text box to automatically adjust its direction according
  // to the input text. Use the Any-RTL heuristic, which sets an RTL direction
  // iff the text contains at least one RTL character.
  //normalText.enableDefaultDirectionEstimator(true);//setDirectionEstimator(AnyRtlDirectionEstimator.get());
  grid.setWidget(0, 1, normalText);

  grid.setWidget(1, 0, new ui.Label("Disabled Text:"));
  ui.TextBox disabledText = new ui.TextBox();
  disabledText.text = "read only";
  disabledText.enabled = false;
  grid.setWidget(1, 1, disabledText);

  grid.setWidget(2, 0, new ui.Label("Normal Password:"));
  // Add a normal and disabled password text box
  ui.PasswordTextBox normalPassword = new ui.PasswordTextBox();
  grid.setWidget(2, 1, normalPassword);
  
  grid.setWidget(3, 0, new ui.Label("Disabled Password:"));
  ui.PasswordTextBox disabledPassword = new ui.PasswordTextBox();
  disabledPassword.text = "123456";
  disabledPassword.enabled = false;
  grid.setWidget(3, 1, disabledPassword);

  grid.setWidget(4, 0, new ui.Label("Text Area:"));
  // Add a text area
  ui.TextArea textArea = new ui.TextArea();
  textArea.setVisibleLines(5);
  grid.setWidget(4, 1, textArea);

  ui.RootPanel.get().add(grid);
}