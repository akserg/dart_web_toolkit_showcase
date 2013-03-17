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

class PushButtonModel implements mvp.ViewModel {
  
  // Component's category name
  String get category => "Widget";
  
  // Return component's name
  String get name => "PushButton";
  
  // Return component's description
  String get desc => '''
A normal push button with custom styling.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
ui.VerticalPanel vpanel = new ui.VerticalPanel();

ui.HorizontalPanel pushPanel = new ui.HorizontalPanel();
pushPanel.spacing = 10;

// Combine all the panels
vpanel.add(pushPanel);
vpanel.add(new ui.Html("<br><br>PushButtons allow you to customize the look of your buttons"));

ui.PushButton normalPushButton = new ui.PushButton.fromImage(new ui.Image("img/darts.jpg"));
pushPanel.add(normalPushButton);

// Add a disabled PushButton
ui.PushButton disabledPushButton = new ui.PushButton.fromImage(new ui.Image("img/darts.jpg"));
disabledPushButton.enabled = false;
pushPanel.add(disabledPushButton);

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
    
    ui.VerticalPanel vpanel = new ui.VerticalPanel();

    ui.HorizontalPanel pushPanel = new ui.HorizontalPanel();
    pushPanel.spacing = 10;

    // Combine all the panels
    vpanel.add(pushPanel);
    vpanel.add(new ui.Html("<br><br>PushButtons allow you to customize the look of your buttons"));

    ui.PushButton normalPushButton = new ui.PushButton.fromImage(new ui.Image("img/darts.jpg"));
    pushPanel.add(normalPushButton);

    // Add a disabled PushButton
    ui.PushButton disabledPushButton = new ui.PushButton.fromImage(new ui.Image("img/darts.jpg"));
    disabledPushButton.enabled = false;
    pushPanel.add(disabledPushButton);

    return vpanel;
  }
}