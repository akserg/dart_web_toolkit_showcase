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
  // Create a panel to align the Widgets
  ui.HorizontalPanel hPanel = new ui.HorizontalPanel();
  hPanel.spacing = 20;

  // Add a drop box with the list types
  ui.ListBox dropBox = new ui.ListBox();
  List<String> listTypes = ["Car Type", "Sport", "City"];
  for (int i = 0; i < listTypes.length; i++) {
    dropBox.addItem(listTypes[i]);
  }
  ui.VerticalPanel dropBoxPanel = new ui.VerticalPanel();
  dropBoxPanel.spacing = 4;
  dropBoxPanel.add(new ui.Html("Select a category:"));
  dropBoxPanel.add(dropBox);
  hPanel.add(dropBoxPanel);

  // Add a list box with multiple selection enabled
  ui.ListBox multiBox = new ui.ListBox(true);
  multiBox.setWidth("11em");
  multiBox.setVisibleItemCount(10);
  for (int i = 0; i < listTypes.length; i++) {
    multiBox.addItem(listTypes[i]);
  }
  ui.VerticalPanel multiBoxPanel = new ui.VerticalPanel();
  multiBoxPanel.spacing = 4;
  multiBoxPanel.add(new ui.Html("Select all that apply:"));
  multiBoxPanel.add(multiBox);
  hPanel.add(multiBoxPanel);

  // Add a handler to handle drop box events
  dropBox.addChangeHandler(new event.ChangeHandlerAdapter((event.ChangeEvent event){
    showCategory(multiBox, dropBox.getSelectedIndex());
  }));

  // Show default category
  showCategory(multiBox, 0);

  ui.RootPanel.get().add(hPanel);
}

/**
 * Display the options for a given category in the list box.
*
 * @param listBox the ListBox to add the options to
 * @param category the category index
 */
void showCategory(ui.ListBox listBox, int category) {
  listBox.clear();
  List<String> listData = null;
  switch (category) {
    case 0:
      listData = ["compact", "sedan", "coupe", "convertable", "SUV", "truck"];
      break;
    case 1:
      listData = ["Baseball", "Basketball", "Footbal"];
      break;
    case 2:
      listData = ["Paris", "London"];
      break;
  }
  for (int i = 0; i < listData.length; i++) {
    listBox.addItem(listData[i]);
  }
}