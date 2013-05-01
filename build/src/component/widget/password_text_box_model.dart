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

class PasswordTextBoxModel extends mvp.ViewModel {
  
  // Component's category name
  String get category => "Widget";
  
  // Return component's name
  String get name => "PasswordTextBox";
  
  // Return component's description
  String get desc => '''
A text box that visually masks its input to prevent eavesdropping.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
// Create a panel to layout the widgets
ui.Grid grid = new ui.Grid(5, 2);

grid.setWidget(0, 0, new ui.Label("Normal Password:"));
// Add a normal and disabled password text box
ui.PasswordTextBox normalPassword = new ui.PasswordTextBox();
grid.setWidget(0, 1, normalPassword);

grid.setWidget(1, 0, new ui.Label("Disabled Password:"));
ui.PasswordTextBox disabledPassword = new ui.PasswordTextBox();
disabledPassword.text = "123456";
disabledPassword.enabled = false;
grid.setWidget(1, 1, disabledPassword);

return grid;
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
    
    // Create a panel to layout the widgets
    ui.Grid grid = new ui.Grid(5, 2);
    
    grid.setWidget(0, 0, new ui.Label("Normal Password:"));
    // Add a normal and disabled password text box
    ui.PasswordTextBox normalPassword = new ui.PasswordTextBox();
    grid.setWidget(0, 1, normalPassword);
    
    grid.setWidget(1, 0, new ui.Label("Disabled Password:"));
    ui.PasswordTextBox disabledPassword = new ui.PasswordTextBox();
    disabledPassword.text = "123456";
    disabledPassword.enabled = false;
    grid.setWidget(1, 1, disabledPassword);

    return grid;
  }
}