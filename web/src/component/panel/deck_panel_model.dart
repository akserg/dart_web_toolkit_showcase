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

class DeckPanelModel implements mvp.ViewModel {
  
  // Component's category name
  String get category => "Panel";
  
  // Return component's name
  String get name => "DeckPanel";
  
  // Return component's description
  String get desc => '''
A panel that displays all of its child widgets in a 'deck', where only one can 
be visible at a time. It is used by TabPanel.

Once a widget has been added to a DeckPanel, its visibility, width, and height 
attributes will be manipulated. When the widget is removed from the DeckPanel, 
it will be visible, and its width and height attributes will be cleared.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
ui.DeckPanel panel = new ui.DeckPanel();
panel.setSize("300px", "120px");
ui.Label label;

label = new ui.Label("Widget 0");
label.getElement().style.backgroundColor = "red";
panel.add(label);

label = new ui.Label("Widget 1");
label.getElement().style.backgroundColor = "yellow";
panel.add(label);

label = new ui.Label("Widget 2");
label.getElement().style.backgroundColor = "pink";
panel.add(label);

label = new ui.Label("Widget 3");
label.getElement().style.backgroundColor = "cyan";
panel.add(label);

panel.showWidgetAt(0);

util.Timer t = new util.Timer.get(()
{
  int index = panel.getVisibleWidgetIndex();
  index++;
  if (index == panel.getWidgetCount()) {
    index = 0;
  }
  panel.showWidgetAt(index);
});
t.scheduleRepeating(1000);

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
    
    ui.DeckPanel panel = new ui.DeckPanel();
    panel.setSize("300px", "120px");
    ui.Label label;

    label = new ui.Label("Widget 0");
    label.getElement().style.backgroundColor = "red";
    panel.add(label);

    label = new ui.Label("Widget 1");
    label.getElement().style.backgroundColor = "yellow";
    panel.add(label);

    label = new ui.Label("Widget 2");
    label.getElement().style.backgroundColor = "pink";
    panel.add(label);

    label = new ui.Label("Widget 3");
    label.getElement().style.backgroundColor = "cyan";
    panel.add(label);

    panel.showWidgetAt(0);

    util.Timer t = new util.Timer.get(()
    {
      int index = panel.getVisibleWidgetIndex();
      index++;
      if (index == panel.getWidgetCount()) {
        index = 0;
      }
      panel.showWidgetAt(index);
    });
    t.scheduleRepeating(1000);
    
    return panel;
  }
}

