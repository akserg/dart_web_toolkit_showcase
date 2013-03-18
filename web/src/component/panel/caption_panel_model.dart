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

class CaptionPanelModel extends mvp.ViewModel {
  
  // Component's category name
  String get category => "Panel";
  
  // Return component's name
  String get name => "CaptionPanel";
  
  // Return component's description
  String get desc => '''
A panel that wraps its contents in a border with a caption that appears in the 
upper left corner of the border. This is an implementation of the fieldset HTML 
element.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
ui.CaptionPanel panel = new ui.CaptionPanel("Caption Goes Here");

panel.setContentWidget(new ui.Label("The main, wrapped widget goes here."));

// Set up some style - normally you'd do this in CSS, but it's
// easier to show like this

panel.getElement().style.border = "3px solid #00c";
panel.getContentWidget().getElement().style.margin = "5px 10px 10px 10px";
panel.getContentWidget().getElement().style.padding = "10px 10px 10px 10px";
panel.getContentWidget().getElement().style.border = "1px solid #ccf";

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
    
    ui.CaptionPanel panel = new ui.CaptionPanel("Caption Goes Here");

    panel.setContentWidget(new ui.Label("The main, wrapped widget goes here."));

    // Set up some style - normally you'd do this in CSS, but it's
    // easier to show like this

    panel.getElement().style.border = "3px solid #00c";
    panel.getContentWidget().getElement().style.margin = "5px 10px 10px 10px";
    panel.getContentWidget().getElement().style.padding = "10px 10px 10px 10px";
    panel.getContentWidget().getElement().style.border = "1px solid #ccf";
    
    return panel;
  }
}

