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

class DatePickerModel implements ComponentModel {
  
  // Component's category name
  String get category => "Widget";
  
  // Return component's name
  String get name => "DatePicker";
  
  // Return component's description
  String get desc => "Standard date picker.";
  
  // Return code snipet how to use component
  String get code {
    return '''
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
//    ui.HorizontalPanel hPanel = new ui.HorizontalPanel();
//    
//    // Create a date picker
//    ui.DatePicker datePicker = new ui.DatePicker();
//    ui.Label text = new ui.Label();
//
//    // Set the value in the text box when the user selects a date
//    datePicker.addValueChangeHandler(new event.ValueChangeHandlerAdapter<DateTime>((event.ValueChangeEvent<DateTime> evt) {
//      DateTime date = evt.value;
//      String dateString = i18n.DateTimeFormat.getMediumDateFormat().format(date);
//      text.text = dateString;
//    }));
//
//    // Set the default value
//    datePicker.value = new DateTime.now();
//    
//    // Add the widgets to the page
//    hPanel.add(text);
//    hPanel.add(datePicker);
//    return hPanel;
    return new ui.Label("DatePicker not implemented yet.");
  }
}

