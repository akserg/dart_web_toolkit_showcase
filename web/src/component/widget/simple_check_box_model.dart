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

class SimpleCheckBoxModel extends mvp.ViewModel {
  
  // Component's category name
  String get category => "Widget";
  
  // Return component's name
  String get name => "SimpleCheckBox";
  
  // Return component's description
  String get desc => '''
A simple checkbox widget, with no label.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
ui.SimpleCheckBox sCheckBox = new ui.SimpleCheckBox();
sCheckBox.setValue(true);

return sCheckBox;
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
    
    ui.SimpleCheckBox sCheckBox = new ui.SimpleCheckBox();
    sCheckBox.setValue(true);
    
    return sCheckBox;
  }
}