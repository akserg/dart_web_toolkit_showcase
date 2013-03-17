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

class PopupPanelModel implements mvp.ViewModel {
  
  // Component's category name
  String get category => "Popup";
  
  // Return component's name
  String get name => "PopupPanel";
  
  // Return component's description
  String get desc => '''
A panel that can "pop up" over other widgets. It overlays the browser's client 
area (and any previously-created popups).

A PopupPanel should not generally be added to other panels; rather, it should 
be shown and hidden using the show() and hide() methods.

The width and height of the PopupPanel cannot be explicitly set; they are 
determined by the PopupPanel's widget. Calls to setWidth(String) and 
setHeight(String) will call these methods on the PopupPanel's widget.

The PopupPanel can be optionally displayed with a "glass" element behind it, 
which is commonly used to gray out the widgets behind it. It can be enabled 
using setGlassEnabled(boolean). It has a default style name of 
"dwt-PopupPanelGlass", which can be changed using setGlassStyleName(String).
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
// Create a basic popup widget
ui.DecoratedPopupPanel simplePopup = new ui.DecoratedPopupPanel(true);
simplePopup.setWidth("150px");
//simplePopup.setGlassEnabled(true);
simplePopup.setWidget(new ui.Html("Click anywhere outside this popup to make it disappear."));

// Create a button to show the popup
ui.Button openButton = new ui.Button("Show Basic Popup", new event.ClickHandlerAdapter((event.ClickEvent evt){
  // Reposition the popup relative to the button
  dart_html.ButtonElement source = evt.getSource();
  
  int left = event.Dom.getAbsoluteLeft(source) + 10;
  int top = event.Dom.getAbsoluteTop(source) + 10;
  
  simplePopup.setPopupPosition(left, top);

  // Show the popup
  simplePopup.show();
}));

return openButton;
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
    
    // Create a basic popup widget
    ui.DecoratedPopupPanel simplePopup = new ui.DecoratedPopupPanel(true);
    simplePopup.setWidth("150px");
    //simplePopup.setGlassEnabled(true);
    simplePopup.setWidget(new ui.Html("Click anywhere outside this popup to make it disappear."));

    // Create a button to show the popup
    ui.Button openButton = new ui.Button("Show Basic Popup", new event.ClickHandlerAdapter((event.ClickEvent evt){
      // Reposition the popup relative to the button
      dart_html.ButtonElement source = evt.getSource();
      
      int left = event.Dom.getAbsoluteLeft(source) + 10;
      int top = event.Dom.getAbsoluteTop(source) + 10;
      
      simplePopup.setPopupPosition(left, top);

      // Show the popup
      simplePopup.show();
    }));
    
    return openButton;
  }
}
