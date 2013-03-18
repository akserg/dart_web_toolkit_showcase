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

class ScrolledPanelModel extends mvp.ViewModel {
  
  // Component's category name
  String get category => "Panel";
  
  // Return component's name
  String get name => "ScrolledPanel";
  
  // Return component's description
  String get desc => '''
A simple panel that wraps its contents in a scrollable area.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
ui.ScrollPanel panel = new ui.ScrollPanel(new ui.Html("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi sit amet massa ornare mauris lobortis laoreet. Pellentesque vel est at massa condimentum porta. Aliquam tincidunt scelerisque orci. Donec sit amet elit nec leo egestas vestibulum. Mauris et nibh quis ipsum volutpat congue. Ut tellus nibh, convallis sed, consectetuer sit amet, facilisis eget, lectus. Morbi hendrerit, dolor eget tincidunt tristique, velit enim laoreet erat, nec condimentum eros mi quis tellus. Fusce pharetra nibh vestibulum lacus. Integer vulputate eros at nisi. Phasellus elit quam, dignissim quis, volutpat vitae, egestas nec, nisi. Nullam sodales sagittis quam. Aliquam iaculis neque ut magna. Donec convallis interdum sem. Sed suscipit."));
panel.setSize("200px", "120px");

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
    
    ui.ScrollPanel panel = new ui.ScrollPanel(new ui.Html("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi sit amet massa ornare mauris lobortis laoreet. Pellentesque vel est at massa condimentum porta. Aliquam tincidunt scelerisque orci. Donec sit amet elit nec leo egestas vestibulum. Mauris et nibh quis ipsum volutpat congue. Ut tellus nibh, convallis sed, consectetuer sit amet, facilisis eget, lectus. Morbi hendrerit, dolor eget tincidunt tristique, velit enim laoreet erat, nec condimentum eros mi quis tellus. Fusce pharetra nibh vestibulum lacus. Integer vulputate eros at nisi. Phasellus elit quam, dignissim quis, volutpat vitae, egestas nec, nisi. Nullam sodales sagittis quam. Aliquam iaculis neque ut magna. Donec convallis interdum sem. Sed suscipit."));
    panel.setSize("200px", "120px");

    return panel;
  }
}