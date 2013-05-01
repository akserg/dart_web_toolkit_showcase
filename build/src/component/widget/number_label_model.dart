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

class NumberLabelModel extends mvp.ViewModel {
  
  // Component's category name
  String get category => "Widget";
  
  // Return component's name
  String get name => "NumberLabel";
  
  // Return component's description
  String get desc => '''
Extends ValueLabel for convenience when dealing with numbers and NumberFormat, 
especially in UiBinder templates. (Note that this class does not accept renderers. 
To do so use ValueLabel directly.)
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
ui.Grid grid = new ui.Grid(1, 2);

grid.setWidget(0, 0, new ui.Label("Number Label:"));
ui.NumberLabel nLabel = new ui.NumberLabel();
nLabel.setValue(123.12);
grid.setWidget(0, 1, nLabel);

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
    
    ui.Grid grid = new ui.Grid(1, 2);
    
    grid.setWidget(0, 0, new ui.Label("Number Label:"));
    ui.NumberLabel nLabel = new ui.NumberLabel();
    nLabel.setValue(123.12);
    grid.setWidget(0, 1, nLabel);

    return grid;
  }
}