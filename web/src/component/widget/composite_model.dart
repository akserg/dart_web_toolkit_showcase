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

class CompositeModel implements ComponentModel {
  
  // Component's category name
  String get category => "Widget";
  
  // Return component's name
  String get name => "Composite";
  
  // Return component's description
  String get desc => '''The Composite is a wrapper for another widget. It hides all the wrapped widget's methods and properties.''';
  
  // Return code snipet how to use component
  String get code {
    return '''
// In our code
new _DisplayBox("Header", "This is my data");

// In some where...
class DisplayBox extends ui.Composite {

    DisplayBox(String header, String data) {
      ui.VerticalPanel widget = new ui.VerticalPanel();
      initWidget(widget);
      widget.addStyleName("demo-Composite");

      ui.Label headerText = new ui.Label(header);
      widget.add(headerText);
      headerText.addStyleName("demo-Composite-header");

      ui.Label dataText = new ui.Label(data);
      widget.add(dataText);
      dataText.addStyleName("demo-Composite-data");
    }
}
''';
  }
  
  // Return style snipet for using component
  String get style {
    return '''
.demo-Composite
{
  background-color  : #ffc;
  border            : 3px solid #009;
  margin            : 0 auto;
}
.demo-Composite-header
{
  background-color  : #ff0;
  font-size         : 90%;
  font-weight       : bold;
  border-bottom     : 3px solid #009;
  padding           : 5px;
  text-align        : center;
}
.demo-Composite-data
{
  font-size         : 80%;
  padding           : 15px;
}
''';
  }
  
  /**
   * Return instantiated Component code.
   */
  ui.Widget asWidget() {
    return new _DisplayBox("Header", "This is my data");
  }
}

class _DisplayBox extends ui.Composite {

    _DisplayBox(String header, String data) {
      ui.VerticalPanel widget = new ui.VerticalPanel();
      initWidget(widget);
      widget.addStyleName("demo-Composite");

      ui.Label headerText = new ui.Label(header);
      widget.add(headerText);
      headerText.addStyleName("demo-Composite-header");

      ui.Label dataText = new ui.Label(data);
      widget.add(dataText);
      dataText.addStyleName("demo-Composite-data");
    }
}

