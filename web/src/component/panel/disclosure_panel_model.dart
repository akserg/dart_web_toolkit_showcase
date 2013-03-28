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

class DisclosurePanelModel extends mvp.ViewModel {
  
  // Return true if view available for show
  bool get available => false;
  
  // Component's category name
  String get category => "Panel";
  
  // Return component's name
  String get name => "DisclosurePanel";
  
  // Return component's description
  String get desc => '''
A widget that consists of a header and a content panel that discloses the 
content when a user clicks on the header.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
// Create a table to layout the form options
ui.FlexTable layout = new ui.FlexTable();
layout.setCellSpacing(6);
layout.setWidth("300px");
ui.FlexCellFormatter cellFormatter = layout.getFlexCellFormatter();

// Add a title to the form
layout.setHtml(0, 0, "Enter Search Criteria");
cellFormatter.setColSpan(0, 0, 2);
cellFormatter.setHorizontalAlignment(0, 0, i18n.HasHorizontalAlignment.ALIGN_CENTER);

// Add some standard form options
layout.setHtml(1, 0, "Name");
layout.setWidget(1, 1, new ui.TextBox());
layout.setHtml(2, 0, "Description");
layout.setWidget(2, 1, new ui.TextBox());

// Create some advanced options
ui.HorizontalPanel genderPanel = new ui.HorizontalPanel();
List<String> genderOptions = ["male", "femail"];
for (int i = 0; i < genderOptions.length; i++) {
  genderPanel.add(new ui.RadioButton("gender", genderOptions[i]));
}
ui.Grid advancedOptions = new ui.Grid(2, 2);
advancedOptions.setCellSpacing(6);
advancedOptions.setHtml(0, 0, "Location");
advancedOptions.setWidget(0, 1, new ui.TextBox());
advancedOptions.setHtml(1, 0, "Gender");
advancedOptions.setWidget(1, 1, genderPanel);

// Add advanced options to form in a disclosure panel
ui.DisclosurePanel advancedDisclosure = new ui.DisclosurePanel.fromText("Advanced Criteria");
advancedDisclosure.setAnimationEnabled(true);
advancedDisclosure.setContent(advancedOptions);
layout.setWidget(3, 0, advancedDisclosure);
cellFormatter.setColSpan(3, 0, 2);

// Wrap the contents in a DecoratorPanel
ui.DecoratorPanel decPanel = new ui.DecoratorPanel();
decPanel.setWidget(layout);

return decPanel;
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
    
    // Create a table to layout the form options
    ui.FlexTable layout = new ui.FlexTable();
    layout.setCellSpacing(6);
    layout.setWidth("300px");
    ui.FlexCellFormatter cellFormatter = layout.getFlexCellFormatter();

    // Add a title to the form
    layout.setHtml(0, 0, "Enter Search Criteria");
    cellFormatter.setColSpan(0, 0, 2);
    cellFormatter.setHorizontalAlignment(0, 0, i18n.HasHorizontalAlignment.ALIGN_CENTER);

    // Add some standard form options
    layout.setHtml(1, 0, "Name");
    layout.setWidget(1, 1, new ui.TextBox());
    layout.setHtml(2, 0, "Description");
    layout.setWidget(2, 1, new ui.TextBox());

    // Create some advanced options
    ui.HorizontalPanel genderPanel = new ui.HorizontalPanel();
    List<String> genderOptions = ["male", "femail"];
    for (int i = 0; i < genderOptions.length; i++) {
      genderPanel.add(new ui.RadioButton("gender", genderOptions[i]));
    }
    ui.Grid advancedOptions = new ui.Grid(2, 2);
    advancedOptions.setCellSpacing(6);
    advancedOptions.setHtml(0, 0, "Location");
    advancedOptions.setWidget(0, 1, new ui.TextBox());
    advancedOptions.setHtml(1, 0, "Gender");
    advancedOptions.setWidget(1, 1, genderPanel);

    // Add advanced options to form in a disclosure panel
    ui.DisclosurePanel advancedDisclosure = new ui.DisclosurePanel.fromText("Advanced Criteria");
    advancedDisclosure.setAnimationEnabled(true);
    advancedDisclosure.setContent(advancedOptions);
    layout.setWidget(3, 0, advancedDisclosure);
    cellFormatter.setColSpan(3, 0, 2);

    // Wrap the contents in a DecoratorPanel
    ui.DecoratorPanel decPanel = new ui.DecoratorPanel();
    decPanel.setWidget(layout);
    
    return decPanel;
  }
}