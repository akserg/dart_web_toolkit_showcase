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

class DoubleBoxModel extends mvp.ViewModel {
  
  // Component's category name
  String get category => "Widget";
  
  // Return component's name
  String get name => "DoubleBox";
  
  // Return component's description
  String get desc => "A ValueBox that uses DoubleParser and DoubleRenderer.";
  
  // Return code snipet how to use component
  String get code {
    return '''
ui.VerticalPanel vPanel = new ui.VerticalPanel();
    
ui.Label input = new ui.Label();

// PI is input valie
double value = dart_math.PI;
vPanel.add(new ui.Label("Input: \$value"));
// Double box
ui.DoubleBox box = new ui.DoubleBox();
box.setValue(value);
vPanel.add(box);
// Output value
vPanel.add(new ui.Label("Output: \${box.getValue()}"));

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
    
    ui.Label input = new ui.Label();

    // PI is input valie
    double value = dart_math.PI;
    vPanel.add(new ui.Label("Input (double): $value"));
    // Double box
    ui.DoubleBox box = new ui.DoubleBox();
    box.setValue(value);
    vPanel.add(box);
    // Output value
    vPanel.add(new ui.Label("Output: ${box.getValue()}"));
    
    vPanel.add(new ui.Html("<hr/>"));
    
    double valueNan = double.NAN;
    vPanel.add(new ui.Label("Input (double): ${valueNan}"));
    // Double boxNan
    ui.DoubleBox boxNan = new ui.DoubleBox();
    boxNan.setValue(valueNan);
    vPanel.add(boxNan);
    // Output value
    vPanel.add(new ui.Label("Output: ${boxNan.getValue()}"));
    
    vPanel.add(new ui.Html("<hr/>"));
    
    String errorDouble = "bla-bla-bla";
    vPanel.add(new ui.Label("Input (string): ${errorDouble}"));
    // Double boxNan
    ui.DoubleBox boxError = new ui.DoubleBox();
    boxError.text = errorDouble;
    vPanel.add(boxError);
    // Output value
    vPanel.add(new ui.Label("Output: ${boxError.getValue()}"));
    
    return vPanel;
  }
}

