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

class LayoutPanelModel extends mvp.ViewModel {
  
  // Component's category name
  String get category => "Layout";
  
  // Return component's name
  String get name => "LayoutPanel";
  
  // Return component's description
  String get desc => '''
A panel that lays its children out in arbitrary layers using the Layout class.

This widget will only work in standards mode, which requires that the HTML page 
in which it is run have an explicit <!DOCTYPE> declaration.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
// Attach two child widgets to a LayoutPanel, laying them out horizontally,
// splitting at 50%.
ui.Widget childOne = new ui.Html("<div style='background-color: #FF0000; width:100%; height:100%;'>left</div>"); 
ui.Widget childTwo = new ui.Html("<div style='background-color: #00FF00; width:100%; height:100%;'>right</div>");

ui.LayoutPanel panel = new ui.LayoutPanel();
panel.setSize("100%", "100%");
panel.add(childOne);
panel.add(childTwo);

panel.setWidgetLeftWidth(childOne, 0.0, util.Unit.PCT, 50.0, util.Unit.PCT);
panel.setWidgetRightWidth(childTwo, 0.0, util.Unit.PCT, 50.0, util.Unit.PCT);

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
    
    // Attach two child widgets to a LayoutPanel, laying them out horizontally,
    // splitting at 50%.
    ui.Widget childOne = new ui.Html("<div style='background-color: #FF0000; width:100%; height:100%;'>left</div>"); 
    ui.Widget childTwo = new ui.Html("<div style='background-color: #00FF00; width:100%; height:100%;'>right</div>");
    
    ui.LayoutPanel panel = new ui.LayoutPanel();
    panel.setSize("100%", "100%");
    panel.add(childOne);
    panel.add(childTwo);

    panel.setWidgetLeftWidth(childOne, 0.0, util.Unit.PCT, 50.0, util.Unit.PCT);
    panel.setWidgetRightWidth(childTwo, 0.0, util.Unit.PCT, 50.0, util.Unit.PCT);

    return panel;
  }
}

