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

class IntegerBoxModel extends mvp.ViewModel {
  
  // Component's category name
  String get category => "Widget";
  
  // Return component's name
  String get name => "IntegerBox";
  
  // Return component's description
  String get desc => "A ValueBox that uses IntegerParser and IntegerRenderer.";
  
  // Return code snipet how to use component
  String get code {
    return '''
ui.VerticalPanel vPanel = new ui.VerticalPanel();
vPanel.spacing = 4;
    
vPanel.add(new ui.Label("Type for validation"));
// Integer boxNan
ui.IntegerBox boxV = new ui.IntegerBox();
vPanel.add(boxV);
// Value and validator
ui.Label validOutput = new ui.Label("Output is \${_validateField(boxV)}");
vPanel.add(validOutput);
boxV.addKeyUpHandler(new event.KeyUpHandlerAdapter((event.KeyUpEvent evt){
  validOutput.text = "Output is \${_validateField(boxV)}";
}));
  
return vPanel;



String _validateField(ui.IntegerBox box) {
  int value = box.getValue();
  if (value == null) {
    return "not valid";
  } else {
    return value.toString();
  }
}
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
    vPanel.spacing = 4;
    
    vPanel.add(new ui.Label("Type for validation"));
    // Integer boxNan
    ui.IntegerBox boxV = new ui.IntegerBox();
    vPanel.add(boxV);
    // Value and validator
    ui.Label validOutput = new ui.Label("Output is ${_validateField(boxV)}");
    vPanel.add(validOutput);
    boxV.addKeyUpHandler(new event.KeyUpHandlerAdapter((event.KeyUpEvent evt){
      validOutput.text = "Output is ${_validateField(boxV)}";
    }));
    
    return vPanel;
  }
  
  String _validateField(ui.IntegerBox box) {
    int value = box.getValue();
    if (value == null) {
      return "not valid";
    } else {
      return value.toString();
    }
  }
}

