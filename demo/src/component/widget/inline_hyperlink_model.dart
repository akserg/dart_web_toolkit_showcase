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

class InlineHyperlinkModel extends mvp.ViewModel {
  
  // Component's category name
  String get category => "Widget";
  
  // Return component's name
  String get name => "InlineHyperlink";
  
  // Return component's description
  String get desc => '''
A widget that serves as an \"internal\" hyperlink. That is, it is a link to another state of the running application. It should behave exactly like Hyperlink, save that it lays out as an inline element, not block.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
ui.InlineHyperlink inlineHyperlink = new ui.InlineHyperlink("Inline Hyperlink", "Home");
    
return inlineHyperlink;
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
    
    ui.InlineHyperlink inlineHyperlink = new ui.InlineHyperlink("Inline Hyperlink", false, "Home");
    
    return inlineHyperlink;
  }
}

