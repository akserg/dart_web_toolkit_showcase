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

class SimpleRadioButtonModel implements mvp.ViewModel {
  
  // Component's category name
  String get category => "Widget";
  
  // Return component's name
  String get name => "SimpleRadioButton";
  
  // Return component's description
  String get desc => '''
A simple radio button widget, with no label.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
// Create a panel to layout the widgets
ui.VerticalPanel vpanel = new ui.VerticalPanel();
vpanel.spacing = 5;

ui.SimpleRadioButton rCheckBox1 = new ui.SimpleRadioButton("SimpleRadioButtonGroup");
rCheckBox1.setValue(true);
vpanel.add(rCheckBox1);

ui.SimpleRadioButton rCheckBox2 = new ui.SimpleRadioButton("SimpleRadioButtonGroup");
vpanel.add(rCheckBox2);

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
    
    // Create a panel to layout the widgets
    ui.VerticalPanel vpanel = new ui.VerticalPanel();
    vpanel.spacing = 5;
    
    ui.SimpleRadioButton rCheckBox1 = new ui.SimpleRadioButton("SimpleRadioButtonGroup");
    rCheckBox1.setValue(true);
    vpanel.add(rCheckBox1);

    ui.SimpleRadioButton rCheckBox2 = new ui.SimpleRadioButton("SimpleRadioButtonGroup");
    vpanel.add(rCheckBox2);
    
    return vpanel;
  }
}