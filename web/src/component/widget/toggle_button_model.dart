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

part of dart_web_toolkit_component;

class ToggleButtonModel implements mvp.ViewModel {
  
  // Component's category name
  String get category => "Widget";
  
  // Return component's name
  String get name => "ToggleButton";
  
  // Return component's description
  String get desc => '''
A ToggleButton is a stylish stateful button which allows the user to toggle 
between up and down states.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
ui.VerticalPanel vpanel = new ui.VerticalPanel();

ui.HorizontalPanel togglePanel = new ui.HorizontalPanel();
togglePanel.spacing = 10;

// Combine all the panels
vpanel.add(togglePanel);
vpanel.add(new ui.Html("<br><br>ToggleButtons allow you to customize the look of your buttons"));

ui.ToggleButton normalToggleButton = new ui.ToggleButton.fromImage(new ui.Image("img/darts.jpg"));
togglePanel.add(normalToggleButton);

// Add a disabled ToggleButton
ui.ToggleButton disabledToggleButton = new ui.ToggleButton.fromImage(new ui.Image("img/darts.jpg"));
disabledToggleButton.enabled = false;
togglePanel.add(disabledToggleButton);

return vpanel;
''';
  }
  
  // Return style snipet for using component
  String get style {
    return "";
  }
  
  /**
   * Return instantiated Component code.
   */
  ui.Widget asWidget() {
    
    ui.VerticalPanel vpanel = new ui.VerticalPanel();

    ui.HorizontalPanel togglePanel = new ui.HorizontalPanel();
    togglePanel.spacing = 10;

    // Combine all the panels
    vpanel.add(togglePanel);
    vpanel.add(new ui.Html("<br><br>ToggleButtons allow you to customize the look of your buttons"));

    ui.ToggleButton normalToggleButton = new ui.ToggleButton.fromImage(new ui.Image("img/darts.jpg"));
    togglePanel.add(normalToggleButton);

    // Add a disabled ToggleButton
    ui.ToggleButton disabledToggleButton = new ui.ToggleButton.fromImage(new ui.Image("img/darts.jpg"));
    disabledToggleButton.enabled = false;
    togglePanel.add(disabledToggleButton);

    return vpanel;
  }
}