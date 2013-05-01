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

class AbsolutePanelModel extends mvp.ViewModel {
  
  // Component's category name
  String get category => "Panel";
  
  // Return component's name
  String get name => "AbsolutePanel";
  
  // Return component's description
  String get desc => '''
An absolute panel positions all of its children absolutely, allowing them to 
overlap.

Note that this panel will not automatically resize itself to allow enough room 
for its absolutely-positioned children. It must be explicitly sized in order to 
make room for them.

Once a widget has been added to an absolute panel, the panel effectively "owns" 
the positioning of the widget. Any existing positioning attributes on the widget 
may be modified by the panel.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
ui.AbsolutePanel panel = new ui.AbsolutePanel();
panel.setSize("200px", "120px");
panel.getElement().style.borderStyle = "dashed";

ui.Label label = new ui.Label("Label");
label.setWidth("100px");
panel.addInPosition(label, 50, 50);

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
    
    ui.AbsolutePanel panel = new ui.AbsolutePanel();
    panel.setSize("200px", "120px");
    panel.getElement().style.borderStyle = "dashed";

    ui.Label label = new ui.Label("Label");
    label.setWidth("100px");
    panel.addInPosition(label, 50, 50);
    
    return panel;
  }
}

