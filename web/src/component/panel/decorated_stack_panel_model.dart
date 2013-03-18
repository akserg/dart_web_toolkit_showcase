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

class DecoratedStackPanelModel extends mvp.ViewModel {
  
  // Component's category name
  String get category => "Panel";
  
  // Return component's name
  String get name => "DecoratedStackPanel";
  
  // Return component's description
  String get desc => '''
A StackPanel that wraps each item in a 2x3 grid (six box), which allows users to 
add rounded corners.

This widget will only work in quirks mode. If your application is in Standards 
Mode, use StackLayoutPanel instead.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
ui.DecoratedStackPanel panel = new ui.DecoratedStackPanel();
panel.setSize("400px", "200px");

_createDecoratedStackPanelContent(panel, "Panel 1", "One");
_createDecoratedStackPanelContent(panel, "Panel 2", "Two");
_createDecoratedStackPanelContent(panel, "Panel 3", "Three");

return panel;


void _createDecoratedStackPanelContent(ui.StackPanel panel, String text, String label, [bool asHtml = false]) {
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
    
    ui.DecoratedStackPanel panel = new ui.DecoratedStackPanel();
    panel.setSize("400px", "200px");

    _createDecoratedStackPanelContent(panel, "Panel 1", "One");
    _createDecoratedStackPanelContent(panel, "Panel 2", "Two");
    _createDecoratedStackPanelContent(panel, "Panel 3", "Three");

    return panel;
  }
  
  void _createDecoratedStackPanelContent(ui.StackPanel panel, String text, String label, [bool asHtml = false]) {
    ui.Label content = new ui.Label(text);
    panel.add(content, label, asHtml);
  }
}
