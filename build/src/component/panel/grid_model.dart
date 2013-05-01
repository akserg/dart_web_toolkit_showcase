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

class GridModel extends mvp.ViewModel {
  
  // Component's category name
  String get category => "Panel";
  
  // Return component's name
  String get name => "Grid";
  
  // Return component's description
  String get desc => '''
A rectangular grid that can contain text, html, or a child Widget within its 
cells. It must be resized explicitly to the desired number of rows and columns.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
// Create a grid
ui.Grid grid = new ui.Grid(4, 4);
grid.addStyleName("cw-FlexTable");

// Add images to the grid
int numRows = grid.getRowCount();
int numColumns = grid.getColumnCount();
for (int row = 0; row < numRows; row++) {
  for (int col = 0; col < numColumns; col++) {
    grid.setWidget(row, col, new ui.Html("Cell \$row.\$col"));
  }
}

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
    
    // Create a grid
    ui.Grid grid = new ui.Grid(4, 4);
    grid.addStyleName("cw-FlexTable");

    // Add images to the grid
    int numRows = grid.getRowCount();
    int numColumns = grid.getColumnCount();
    for (int row = 0; row < numRows; row++) {
      for (int col = 0; col < numColumns; col++) {
        grid.setWidget(row, col, new ui.Html("Cell $row.$col"));
      }
    }

    return grid;
  }
}