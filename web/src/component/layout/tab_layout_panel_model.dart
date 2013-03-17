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

class TabLayoutPanelModel implements mvp.ViewModel {
  
  // Component's category name
  String get category => "Layout";
  
  // Return component's name
  String get name => "TabLayoutPanel";
  
  // Return component's description
  String get desc => '''
A panel that represents a tabbed set of pages, each of which contains another 
widget. Its child widgets are shown as the user selects the various tabs 
associated with them. The tabs can contain arbitrary text, HTML, or widgets.

This widget will only work in standards mode, which requires that the HTML page 
in which it is run have an explicit <!DOCTYPE> declaration.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
// Create a three-item tab panel, with the tab area 1.5em tall.
ui.TabLayoutPanel tabPanel = new ui.TabLayoutPanel(1.5, util.Unit.EM);
tabPanel.setSize("100%", "100%");
tabPanel.setAnimationDuration(1000);
tabPanel.getElement().style.marginBottom = "10.0".concat(util.Unit.PX.value);

tabPanel.add(new ui.Html("Home"), "[this]");
tabPanel.add(new ui.Html("that"), "[that]");
tabPanel.add(new ui.Html("the other"), "[the other]");

return tabPanel;
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
    
    // Create a three-item tab panel, with the tab area 1.5em tall.
    ui.TabLayoutPanel tabPanel = new ui.TabLayoutPanel(1.5, util.Unit.EM);
    tabPanel.setSize("100%", "100%");
    tabPanel.setAnimationDuration(1000);
    tabPanel.getElement().style.marginBottom = "10.0".concat(util.Unit.PX.value);

    tabPanel.add(new ui.Html("Home"), "[this]");
    tabPanel.add(new ui.Html("that"), "[that]");
    tabPanel.add(new ui.Html("the other"), "[the other]");

    return tabPanel;
  }
}

