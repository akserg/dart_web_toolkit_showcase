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

class FormPanelModel extends mvp.ViewModel {
  
  // Return true if view available for show
  bool get available => false;
  
  // Component's category name
  String get category => "Panel";
  
  // Return component's name
  String get name => "FormPanel";
  
  // Return component's description
  String get desc => '''
A panel that wraps its contents in an HTML <FORM> element.

This panel can be used to achieve interoperability with servers that accept 
traditional HTML form encoding. The following widgets (those that implement 
HasName) will be submitted to the server if they are contained within this panel:

TextBox
PasswordTextBox
RadioButton
SimpleRadioButton
CheckBox
SimpleCheckBox
TextArea
ListBox
FileUpload
Hidden
In particular, FileUpload is only useful when used within a FormPanel, because 
the browser will only upload files using form submission.
''';
  
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
    
    return new ui.Label("FormPanel not implemented yet.");
  }
}