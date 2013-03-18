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

class RadioButtonModel extends mvp.ViewModel {
  
  // Component's category name
  String get category => "Widget";
  
  // Return component's name
  String get name => "RadioButton";
  
  // Return component's description
  String get desc => '''
A mutually-exclusive selection radio button widget. Fires ClickEvents when the 
radio button is clicked, and ValueChangeEvents when the button becomes checked. 
Note, however, that browser limitations prevent ValueChangeEvents from being 
sent when the radio button is cleared as a side effect of another in the group 
being clicked.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
ui.VerticalPanel vpanel = new ui.VerticalPanel();

ui.HorizontalPanel pushPanel = new ui.HorizontalPanel();
pushPanel.spacing = 10;

// Combine all the panels
vpanel.add(new ui.Html("Custom Button"));
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
    
    // Create a vertical panel to align the radio buttons
    ui.VerticalPanel vPanel = new ui.VerticalPanel();
    vPanel.add(new ui.Html("<b>Select your favorite color:</b>"));

    String selectedLabel = "Selected";
    ui.Label selected = new ui.Label("$selectedLabel: none");
    // Add some radio buttons to a group called 'color'
    List<String> colors = ["blue", "red", "yellow", "green"];
    for (int i = 0; i < colors.length; i++) {
      String color = colors[i];
      ui.RadioButton radioButton = new ui.RadioButton("color", color);
      if (i == 2) {
        radioButton.enabled = false;
      }
      radioButton.addValueChangeHandler(new event.ValueChangeHandlerAdapter((event.ValueChangeEvent evt){
        vPanel.getChildren().forEach((ui.Widget w){
          if (w is ui.RadioButton) {
            ui.RadioButton radio = w as ui.RadioButton;
            if (radio.getValue()) {
              selected.text = "$selectedLabel: ${radio.text}";
            }
          }
        });
      }));
      vPanel.add(radioButton);
    }
    vPanel.add(selected);

    return vPanel;
  }
}