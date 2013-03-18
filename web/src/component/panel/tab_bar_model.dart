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

class TabBarModel extends mvp.ViewModel {
  
  // Component's category name
  String get category => "Panel";
  
  // Return component's name
  String get name => "TabBar";
  
  // Return component's description
  String get desc => '''
A horizontal bar of folder-style tabs, most commonly used as part of a TabPanel.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
ui.VerticalPanel vPanel = new ui.VerticalPanel();
vPanel.spacing = 10;

// Create a tab bar with three items.
ui.TabBar bar = new ui.TabBar();
bar.addTabText("foo");
bar.addTabText("bar");
bar.addTabText("baz");
vPanel.add(bar);

ui.Label selected = new ui.Label();
vPanel.add(selected);

bar.addSelectionHandler(new event.SelectionHandlerAdapter((event.SelectionEvent evt){
  int selectedTabIndx = evt.getSelectedItem();
  selected.text = "Selected Tab \$selectedTabIndx";
}));

return vPanel;
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
    
    ui.VerticalPanel vPanel = new ui.VerticalPanel();
    vPanel.spacing = 10;
    
    // Create a tab bar with three items.
    ui.TabBar bar = new ui.TabBar();
    bar.addTabText("foo");
    bar.addTabText("bar");
    bar.addTabText("baz");
    vPanel.add(bar);
    
    ui.Label selected = new ui.Label();
    vPanel.add(selected);
    
    bar.addSelectionHandler(new event.SelectionHandlerAdapter((event.SelectionEvent evt){
      int selectedTabIndx = evt.getSelectedItem();
      selected.text = "Selected Tab $selectedTabIndx";
    }));
    
    return vPanel;
  }
}