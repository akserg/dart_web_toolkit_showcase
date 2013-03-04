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

// Create a vertical panel to align the radio buttons
  ui.VerticalPanel vPanel = new ui.VerticalPanel();
  vPanel.add(new ui.Html("<b>Select your favorite color:</b>"));

  // Add some radio buttons to a group called 'color'
  List<String> colors = ["blue", "red", "yellow", "green"];
  for (int i = 0; i < colors.length; i++) {
    String color = colors[i];
    ui.RadioButton radioButton = new ui.RadioButton("color", color);
    if (i == 2) {
      radioButton.enabled = false;
    }
    vPanel.add(radioButton);
  }

  // Add a new header to select your favorite sport
  vPanel.add(new ui.Html("<br>".concat("<b>Select your favorite sport:</b>")));

  // Add some radio buttons to a group called 'sport'
  List<String> sports = ["Baseball", "Basketball", "Football", "Hockey", "Soccer", "Water Polo"];
  for (int i = 0; i < sports.length; i++) {
    String sport = sports[i];
    ui.RadioButton radioButton = new ui.RadioButton("sport", sport);
    if (i == 2) {
      //radioButton.value = true;
    }
    vPanel.add(radioButton);
  }

  ui.RootPanel.get().add(vPanel);
}