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

class TextBoxModel extends mvp.ViewModel {
  
  // Component's category name
  String get category => "Widget";
  
  // Return component's name
  String get name => "TextBox";
  
  // Return component's description
  String get desc => '''
A standard single-line text box.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
// Create a panel to layout the widgets
ui.Grid grid = new ui.Grid(2, 2);

grid.setWidget(0, 0, new ui.Label("Normal Text:"));
// Add a normal and disabled text box
ui.TextBox normalText = new ui.TextBox();
// Set the normal text box to automatically adjust its direction according
// to the input text. Use the Any-RTL heuristic, which sets an RTL direction
// iff the text contains at least one RTL character.
//normalText.enableDefaultDirectionEstimator(true);//setDirectionEstimator(AnyRtlDirectionEstimator.get());
grid.setWidget(0, 1, normalText);

grid.setWidget(1, 0, new ui.Label("Disabled Text:"));
ui.TextBox disabledText = new ui.TextBox();
disabledText.text = "read only";
disabledText.enabled = false;
grid.setWidget(1, 1, disabledText);

return grid;
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
    
    // Make some text boxes. The password text box is identical to the text
    // box, except that the input is visually masked by the browser.
    ui.PasswordTextBox ptb = new ui.PasswordTextBox();
    ui.TextBox tb = new ui.TextBox();

    // TODO(ECC) must be tested.
    tb.addKeyPressHandler(new event.KeyPressHandlerAdapter((event.KeyPressEvent evt) {
      print("${evt.getUnicodeCharCode()} : ${tb.getValue()}");
    }));

    // Let's make an 80x50 text area to go along with the other two.
    ui.TextArea ta = new ui.TextArea();
    ta.setCharacterWidth(80);
    ta.setVisibleLines(50);

    // Add them to the root panel.
    ui.VerticalPanel panel = new ui.VerticalPanel();
    panel.add(tb);
    panel.add(ptb);
    panel.add(ta);
    
    return panel;
  }
}