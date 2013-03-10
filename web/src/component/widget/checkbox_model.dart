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

class CheckBoxModel implements ComponentModel {
  
  // Component's category name
  String get category => "Widget";
  
  // Return component's name
  String get name => "CheckBox";
  
  // Return component's description
  String get desc => "Basic Checkbox";
  
  // Return code snipet how to use component
  String get code {
    return '''
ui.Label selectedDaysOfWeek = new ui.Label();
    
// Create a vertical panel to align the check boxes
ui.VerticalPanel vPanel = new ui.VerticalPanel();
vPanel.add(new ui.Html("Check all days that you are available:"));

// Add a checkbox for each day of the week
List<String> daysOfWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"];
for (int i = 0; i < daysOfWeek.length; i++) {
  String day = daysOfWeek[i];
  ui.CheckBox checkBox = new ui.CheckBox(day);

  // Disable the weekends
  if (i >= 5) {
    checkBox.enabled = false;
  } else {
    checkBox.addValueChangeHandler(new event.ValueChangeHandlerAdapter((event.ValueChangeEvent evt){
      StringBuffer sb = new StringBuffer();
      // Move through all children and check selected
      vPanel.getChildren().forEach((ui.Widget widget){
        if (widget is ui.CheckBox && (widget as ui.CheckBox).getValue()) {
          if (sb.length > 0) {
            sb.write(", ");
          }
          sb.write(widget.text);
        }
      });
      selectedDaysOfWeek.text = sb.toString();
    }));
  }

  vPanel.add(checkBox);
}

vPanel.add(new ui.Html("<hr/>"));
ui.HorizontalPanel hBox = new ui.HorizontalPanel();
// List of selected days of week
hBox.add(new ui.Label("Selected: "));
hBox.add(selectedDaysOfWeek);
vPanel.add(hBox);
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
    
    ui.Label selectedDaysOfWeek = new ui.Label();
    
    // Create a vertical panel to align the check boxes
    ui.VerticalPanel vPanel = new ui.VerticalPanel();
    vPanel.add(new ui.Html("Check all days that you are available:"));

    // Add a checkbox for each day of the week
    List<String> daysOfWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"];
    for (int i = 0; i < daysOfWeek.length; i++) {
      String day = daysOfWeek[i];
      ui.CheckBox checkBox = new ui.CheckBox(day);

      // Disable the weekends
      if (i >= 5) {
        checkBox.enabled = false;
      } else {
        checkBox.addValueChangeHandler(new event.ValueChangeHandlerAdapter((event.ValueChangeEvent evt){
          StringBuffer sb = new StringBuffer();
          // Move through all children and check selected
          vPanel.getChildren().forEach((ui.Widget widget){
            if (widget is ui.CheckBox && (widget as ui.CheckBox).getValue()) {
              if (sb.length > 0) {
                sb.write(", ");
              }
              sb.write(widget.text);
            }
          });
          selectedDaysOfWeek.text = sb.toString();
        }));
      }

      vPanel.add(checkBox);
    }
    
    vPanel.add(new ui.Html("<hr/>"));
    ui.HorizontalPanel hBox = new ui.HorizontalPanel();
    // List of selected days of week
    hBox.add(new ui.Label("Selected: "));
    hBox.add(selectedDaysOfWeek);
    vPanel.add(hBox);
    
    return vPanel;
  }
}

