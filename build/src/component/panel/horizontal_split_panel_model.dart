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

class HorizontalSplitPanelModel extends mvp.ViewModel {
  
  // Return true if view available for show
  bool get available => false;
  
  // Component's category name
  String get category => "Panel";
  
  // Return component's name
  String get name => "HorizontalSplitPanel";
  
  // Return component's description
  String get desc => '''
A panel that arranges two widgets in a single horizontal row and allows the user 
to interactively change the proportion of the width dedicated to each of the two 
widgets. Widgets contained within a HorizontalSplitPanel will be automatically 
decorated with scrollbars when necessary.

This widget will only work in quirks mode. If your application is in Standards 
Mode, use SplitLayoutPanel instead.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
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
    
    return new ui.Label("HorizontalSplitPanel not implemented yet.");
  }
}