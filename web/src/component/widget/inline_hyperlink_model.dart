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

class InlineHtmlModel extends mvp.ViewModel {
  
  // Component's category name
  String get category => "Widget";
  
  // Return component's name
  String get name => "InlineHtml";
  
  // Return component's description
  String get desc => '''
A widget that can contain arbitrary HTML. This widget uses a <span> element, causing it to be displayed with inline layout.
If you only need a simple label (text, but not HTML), then the Label widget is more appropriate, as it disallows the use of HTML, which can lead to potential security issues if not used properly.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
ui.InlineHtml inlineHtml = new ui.InlineHtml("<div id='fred' style='background-color: red; border: 1px dotted green; width: 200px; text-align: center;'> This is an INLINE HTML Widget </div>");
    
return inlineHtml;
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
    
    ui.InlineHtml inlineHtml = new ui.InlineHtml("<div id='fred' style='background-color: red; border: 1px dotted green; width: 200px; text-align: center;'> This is an INLINE HTML Widget </div>");
    
    return inlineHtml;
  }
}

