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

class SuggestBoxModel implements mvp.ViewModel {
  
  // Component's category name
  String get category => "Widget";
  
  // Return component's name
  String get name => "SuggestBox";
  
  // Return component's description
  String get desc => '''
A SuggestBox is a text box or text area which displays a pre-configured set of 
selections that match the user's input. Each SuggestBox is associated with a 
single SuggestOracle. The SuggestOracle is used to provide a set of selections 
given a specific query string.
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
    
    return new ui.Label("SuggestBox not implemented yet.");
  }
}