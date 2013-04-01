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

class StackPanelModel extends mvp.ViewModel {
  
  // Component's category name
  String get category => "Panel (quirks)";
  
  // Return component's name
  String get name => "StackPanel";
  
  // Return component's description
  String get desc => '''
A panel that stacks its children vertically, displaying only one at a time, with 
a header for each child which the user can click to display.

This widget will only work in quirks mode. If your application is in Standards 
Mode, use StackLayoutPanel instead.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
ui.StackPanel panel = new ui.StackPanel();
panel.setSize("400px", "100%");

_createStackPanelContent(panel, "Panel 1", "One");
_createStackPanelContent(panel, "Panel 2", "Two");
_createStackPanelContent(panel, "Panel 3", "Three");

return panel;


void _createStackPanelContent(ui.StackPanel panel, String text, String label, [bool asHtml = false]) {
  ui.Label content = new ui.Label(text);
  panel.add(content, label, asHtml);
}
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
    
    ui.StackPanel panel = new ui.StackPanel();
    panel.setSize("400px", "100%");

    _createStackPanelContent(panel, "Panel 1", "One");
    _createStackPanelContent(panel, "Panel 2", "Two");
    _createStackPanelContent(panel, "Panel 3", "Three");

    return panel;
  }
  
  void _createStackPanelContent(ui.StackPanel panel, String text, String label, [bool asHtml = false]) {
    ui.Label content = new ui.Label(text);
    panel.add(content, label, asHtml);
  }
}
