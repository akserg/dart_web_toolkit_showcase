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

class FlexTableModel implements mvp.ViewModel {
  
  // Component's category name
  String get category => "Panel";
  
  // Return component's name
  String get name => "FlexTable";
  
  // Return component's description
  String get desc => '''
A flexible table that creates cells on demand. It can be jagged (that is, each 
row can contain a different number of cells) and individual cells can be set to 
span multiple rows or columns.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
ui.FlexTable layout = new ui.FlexTable();
layout.setCellSpacing(6);
ui.FlexCellFormatter cellFormatter = layout.getFlexCellFormatter();

// Add a title to the form
layout.setHtml(0, 0, "Enter Search Criteria");
cellFormatter.setColSpan(0, 0, 2);
cellFormatter.setHorizontalAlignment(0, 0, i18n.HasHorizontalAlignment.ALIGN_CENTER);

// Add some standard form options
layout.setHtml(1, 0, "Name:");
layout.setWidget(1, 1, new ui.TextBox());
layout.setHtml(2, 0, "Description:");
layout.setWidget(2, 1, new ui.TextBox());

// Return the content
return layout;
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
    
    ui.FlexTable layout = new ui.FlexTable();
    layout.setCellSpacing(6);
    ui.FlexCellFormatter cellFormatter = layout.getFlexCellFormatter();

    // Add a title to the form
    layout.setHtml(0, 0, "Enter Search Criteria");
    cellFormatter.setColSpan(0, 0, 2);
    cellFormatter.setHorizontalAlignment(0, 0, i18n.HasHorizontalAlignment.ALIGN_CENTER);

    // Add some standard form options
    layout.setHtml(1, 0, "Name:");
    layout.setWidget(1, 1, new ui.TextBox());
    layout.setHtml(2, 0, "Description:");
    layout.setWidget(2, 1, new ui.TextBox());

    // Return the content
    return layout;
  }
}