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
  // Create a vertical panel to align the check boxes
  ui.VerticalPanel vPanel = new ui.VerticalPanel();
  ui.Html label = new ui.Html("Check all days that you are available:");
  vPanel.add(label);

  // Add a checkbox for each day of the week
  List<String> daysOfWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"];
  for (int i = 0; i < daysOfWeek.length; i++) {
    String day = daysOfWeek[i];
    ui.CheckBox checkBox = new ui.CheckBox(day);

    // Disable the weekends
    if (i >= 5) {
      checkBox.enabled = false;
    }

    vPanel.add(checkBox);
  }

  ui.RootPanel.get().add(vPanel);
}