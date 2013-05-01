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

class RichTextAreaModel extends mvp.ViewModel {
  
  // Return true if view available for show
  bool get available => false;
  
  // Component's category name
  String get category => "Widget";
  
  // Return component's name
  String get name => "RichTextArea";
  
  // Return component's description
  String get desc => '''
A rich text editor that allows complex styling and formatting. Because some 
browsers do not support rich text editing, and others support only a limited 
subset of functionality, there are two formatter interfaces, accessed via 
getBasicFormatter() and getExtendedFormatter() . A browser that does not support 
rich text editing at all will return null for both of these, while one that 
supports only the basic functionality will return null for the latter.
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
    
    return new ui.Label("RichTextArea not implemented yet.");
  }
}