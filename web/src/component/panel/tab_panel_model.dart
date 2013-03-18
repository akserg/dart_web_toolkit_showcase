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

class TabPanelModel extends mvp.ViewModel {
  
  // Component's category name
  String get category => "Panel";
  
  // Return component's name
  String get name => "TabPanel";
  
  // Return component's description
  String get desc => '''
A panel that represents a tabbed set of pages, each of which contains another 
widget. Its child widgets are shown as the user selects the various tabs 
associated with them. The tabs can contain arbitrary HTML.

This widget will only work in quirks mode. If your application is in Standards 
Mode, use TabLayoutPanel instead.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
String text1 = "Lorem ipsum dolor sit amet...";
String text2 = "Sed egestas, arcu nec accumsan...";
String text3 = "Proin tristique, elit at blandit...";

ui.TabPanel panel = new ui.TabPanel();
ui.FlowPanel flowpanel;

flowpanel = new ui.FlowPanel();
flowpanel.add(new ui.Label(text1));
panel.addTabText(flowpanel, "One");

flowpanel = new ui.FlowPanel();
flowpanel.add(new ui.Label(text2));
panel.addTabText(flowpanel, "Two");

flowpanel = new ui.FlowPanel();
flowpanel.add(new ui.Label(text3));
panel.addTabText(flowpanel, "Three");

panel.selectTab(0);

panel.setSize("500px", "250px");
panel.addStyleName("table-center");

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
    
    String text1 = "Lorem ipsum dolor sit amet...";
    String text2 = "Sed egestas, arcu nec accumsan...";
    String text3 = "Proin tristique, elit at blandit...";

    ui.TabPanel panel = new ui.TabPanel();
    ui.FlowPanel flowpanel;

    flowpanel = new ui.FlowPanel();
    flowpanel.setSize("100px", "100px");
    flowpanel.add(new ui.Label(text1));
    panel.addTabText(flowpanel, "One");

    flowpanel = new ui.FlowPanel();
    flowpanel.setSize("100px", "100px");
    flowpanel.add(new ui.Label(text2));
    panel.addTabText(flowpanel, "Two");

    flowpanel = new ui.FlowPanel();
    flowpanel.setSize("100px", "100px");
    flowpanel.add(new ui.Label(text3));
    panel.addTabText(flowpanel, "Three");

    panel.selectTab(0);

    panel.setSize("500px", "250px");
    panel.addStyleName("table-center");

    return panel;
  }
}