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

class SplitLayoutPanelModel implements mvp.ViewModel {
  
  // Component's category name
  String get category => "Layout";
  
  // Return component's name
  String get name => "SplitLayoutPanel";
  
  // Return component's description
  String get desc => '''
A panel that adds user-positioned splitters between each of its child widgets.

This panel is used in the same way as DockLayoutPanel, except that its 
children's sizes are always specified in Style.Unit.PX units, and each pair of 
child widgets has a splitter between them that the user can drag.

This widget will only work in standards mode, which requires that the HTML page 
in which it is run have an explicit <!DOCTYPE> declaration.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
ui.Widget childOne = new ui.Html("<div style='background-color: #FF0000; width:100%; height:100%;'>left</div>"); 
ui.Widget childTwo = new ui.Html("<div style='background-color: #00FF00; width:100%; height:100%;'>right</div>");

ui.SplitLayoutPanel panel = new ui.SplitLayoutPanel();
panel.setSize("100%", "100%");
panel.addWest(childOne, 150.0);
panel.add(childTwo);

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
    
    ui.Widget childOne = new ui.Html("<div style='background-color: #FF0000; width:100%; height:100%;'>left</div>"); 
    ui.Widget childTwo = new ui.Html("<div style='background-color: #00FF00; width:100%; height:100%;'>right</div>");
    
    ui.SplitLayoutPanel panel = new ui.SplitLayoutPanel();
    panel.setSize("100%", "100%");
    panel.addWest(childOne, 150.0);
    panel.add(childTwo);

    return panel;
  }
}

