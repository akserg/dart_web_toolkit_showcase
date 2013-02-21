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

import 'package:dart_web_toolkit/ui.dart' as ui;
import 'package:dart_web_toolkit/event.dart' as event;
import 'package:dart_web_toolkit/scheduler.dart' as scheduler;

ui.AbsolutePanel absolutePanel;

/**
 * The input field used to set the left position of a {@link Widget}.
 */
ui.ListBox leftPosBox;

/**
 * The list box of items that can be repositioned.
 */
ui.ListBox listBox = new ui.ListBox();

/**
 * The input field used to set the top position of a {@link Widget}.
 */
ui.ListBox topPosBox;

/**
 * A mapping between the name of a {@link Widget} and the widget in the
 * {@link AbsolutePanel}.
 */
Map<String, ui.Widget> widgetMap;

/**
 * Element positions
 */
List<String> positions = ["10", "20", "40", "50", "60", "80", "100"];

void main() {

// Create a new panel
  widgetMap = new Map<String, ui.Widget>();
  absolutePanel = new ui.AbsolutePanel();
  absolutePanel.setSize("250px", "250px");

  // Add an HTML widget to the panel
  List<String> widgetNames = ["Hello World", "Button", "Grid"];
  ui.Html text = new ui.Html("Hello World");
  absolutePanel.addInPosition(text, 10, 20);
  widgetMap[widgetNames[0]] = text;

  // Add a Button to the panel
  ui.Button button = new ui.Button("Click Me");
  absolutePanel.addInPosition(button, 80, 40);
  widgetMap[widgetNames[1]] = button;

  // Add a Button to the panel
  ui.Grid grid = new ui.Grid(2, 3);
  grid.setBorderWidth(1);
  for (int i = 0; i < 3; i++) {
    grid.setHtml(0, i, i.toString());
    grid.setWidget(1, i, new ui.Image(""));
  }
  absolutePanel.addInPosition(grid, 60, 100);
  widgetMap[widgetNames[2]] = grid;

  // Wrap the absolute panel in a DecoratorPanel
  ui.DecoratorPanel absolutePanelWrapper = new ui.DecoratorPanel();
  absolutePanelWrapper.setWidget(absolutePanel);

  // Create the options bar
  ui.DecoratorPanel optionsWrapper = new ui.DecoratorPanel();
  optionsWrapper.setWidget(createOptionsBar());

  // Add the components to a panel and return it
  ui.HorizontalPanel mainLayout = new ui.HorizontalPanel();
  mainLayout.spacing = 10;
  mainLayout.add(optionsWrapper);
  mainLayout.add(absolutePanelWrapper);
  
  ui.RootPanel.get().add(mainLayout);
  //
  onInitializeComplete();
}

/**
 * Initialize the options panel after the {@link AbsolutePanel} has been
 * attached to the page.
 */
void onInitializeComplete() {
  scheduler.Scheduler.get().scheduleDeferred(new scheduler.ScheduledCommandAdapter(updateSelectedItem));
}

/**
 * Create an options panel that allows users to select a widget and reposition
 * it.
*
 * @return the new options panel
 */
ui.Widget createOptionsBar() {
  // Create a panel to move components around
  ui.FlexTable optionsBar = new ui.FlexTable();
  topPosBox = new ui.ListBox();
  topPosBox.setWidth("4em");
  for (int i = 0; i < positions.length; i++) {
    topPosBox.addItem(positions[i], positions[i]);
  }
  leftPosBox = new ui.ListBox();
  leftPosBox.setWidth("4em");
  for (int i = 0; i < positions.length; i++) {
    leftPosBox.addItem(positions[i], positions[i]);
  }
  listBox = new ui.ListBox();
  optionsBar.setHtml(0, 0, "<b>Items To Move</b>");
  optionsBar.setWidget(0, 1, listBox);
  optionsBar.setHtml(1, 0, "<b>Top</b>");
  optionsBar.setWidget(1, 1, topPosBox);
  optionsBar.setHtml(2, 0, "<b>Left</b>");
  optionsBar.setWidget(2, 1, leftPosBox);

  // Add the widgets to the list box
  for (String name in widgetMap.keys) {
    listBox.addItem(name);
  }

  // Set the current item position when the user selects an item
  listBox.addChangeHandler(new event.ChangeHandlerAdapter((event.ChangeEvent event) {
    updateSelectedItem();
  }));

  // Move the item as the user changes the value in the left and top boxes
  event.ChangeHandler repositionHandler = new event.ChangeHandlerAdapter((event.ChangeEvent event) {
    repositionItem();
  });
  topPosBox.addChangeHandler(repositionHandler);
  leftPosBox.addChangeHandler(repositionHandler);

  // Return the options bar
  return optionsBar;
}

/**
 * Reposition an item when the user changes the value in the top or left
 * position text boxes.
 */
void repositionItem() {
  // Get the selected item to move
  String name = listBox.getValue(listBox.getSelectedIndex());
  ui.Widget item = widgetMap[name];

  // Reposition the item
  try {
    int top = int.parse(positions[topPosBox.getSelectedIndex()]);
    int left = int.parse(positions[leftPosBox.getSelectedIndex()]);
    absolutePanel.setWidgetPosition(item, left, top);
  } on Exception catch (e) {
    // Ignore invalid user input
    return;
  }
}

/**
 * Update the top and left position text fields when the user selects a new
 * item to move.
 */
void updateSelectedItem() {
  String name = listBox.getValue(listBox.getSelectedIndex());
  ui.Widget item = widgetMap[name];
  //
  int top = absolutePanel.getWidgetTop(item);
  top = positions.indexOf(top.toString());
  topPosBox.setSelectedIndex(top);
  //
  int left = absolutePanel.getWidgetLeft(item);
  left = positions.indexOf(left.toString());
  leftPosBox.setSelectedIndex(left);
}