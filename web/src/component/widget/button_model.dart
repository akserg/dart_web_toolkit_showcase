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

class ButtonModel implements mvp.ViewModel {
  
  // Component's category name
  String get category => "Widget";
  
  // Return component's name
  String get name => "Button";
  
  // Return component's description
  String get desc => "Basic Button";
  
  // Return code snipet how to use component
  String get code {
    return '''
// Layout buttons in horizontal panel
ui.HorizontalPanel hPanel = new ui.HorizontalPanel();
hPanel.spacing = 10;

// Add a normal button
ui.Button normalButton = new ui.Button(
    "Normal Button", new event.ClickHandlerAdapter((event.ClickEvent event) {
      dart_html.window.alert("Stop poking me!");
    }));
hPanel.add(normalButton);

// Add a disabled button
ui.Button disabledButton = new ui.Button("Disabled Button");
disabledButton.enabled = false;
hPanel.add(disabledButton);
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
    
    // Layout buttons in horizontal panel
    ui.HorizontalPanel hPanel = new ui.HorizontalPanel();
    hPanel.spacing = 10;

    // Add a normal button
    ui.Button normalButton = new ui.Button(
        "Normal Button", new event.ClickHandlerAdapter((event.ClickEvent event) {
          dart_html.window.alert("Stop poking me!");
        }));
    hPanel.add(normalButton);

    // Add a disabled button
    ui.Button disabledButton = new ui.Button("Disabled Button");
    disabledButton.enabled = false;
    hPanel.add(disabledButton);
    
    return hPanel;
  }
}

