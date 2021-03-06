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

class SimplePanelModel extends mvp.ViewModel {
  
  // Component's category name
  String get category => "Panel";
  
  // Return component's name
  String get name => "SimplePanel";
  
  // Return component's description
  String get desc => '''
Base class for panels that contain only one widget.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
ui.SimplePanel panel = new ui.SimplePanel();
panel.setSize("200px", "120px");
panel.addStyleName("demo-panel");

ui.Label label = new ui.Label("Label");
label.setWidth("100px");
label.addStyleName("demo-label");
panel.add(label);

return panel;
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
    
    ui.SimplePanel panel = new ui.SimplePanel();
    panel.setSize("200px", "120px");
    panel.addStyleName("demo-panel");

    ui.Label label = new ui.Label("Label");
    label.setWidth("100px");
    label.addStyleName("demo-label");
    panel.add(label);

    return panel;
  }
}