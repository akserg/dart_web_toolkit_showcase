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

class ImageModel implements mvp.ViewModel {
  
  // Component's category name
  String get category => "Widget";
  
  // Return component's name
  String get name => "Image";
  
  // Return component's description
  String get desc => "Image";
  
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
    
    ui.Label lbl = new ui.Label();
    ui.Button btn = new ui.Button("Clip this image");
    ui.Button btn2 = new ui.Button("Restore image");
    
    // Create an image, not yet referencing a URL. We make it final so that we
    // can manipulate the image object within the ClickHandlers for the buttons.
    ui.Image image = new ui.Image("http://www.google.com/images/logo.gif");

    // Hook up an error handler, so that we can be informed if the image fails
    // to load.
    image.addErrorHandler(new event.ErrorHandlerAdapter((event.ErrorEvent evt) {
      lbl.text = "An error occurred while loading.";
    }));

    // Point the image at a real URL.
    //image.setUrl("http://www.google.com/images/logo.gif");

    // When the user clicks this button, we want to clip the image.
    btn.addClickHandler(new event.ClickHandlerAdapter((event.ClickEvent evt) {
      image.setVisibleRect(70, 0, 47, 110);
    }));
    btn.setWidth("120px");

    // When the user clicks this button, we want to restore the image to its
    // unclipped state.
    btn2.addClickHandler(new event.ClickHandlerAdapter((event.ClickEvent evt) {
      image.setUrl("http://www.google.com/images/logo.gif");
    }));
    btn2.setWidth("120px");

    // Add the image, label, and clip/restore buttons to the root panel.
    ui.VerticalPanel panel = new ui.VerticalPanel();
    panel.add(lbl);
    panel.add(image);

    ui.HorizontalPanel buttonPanel = new ui.HorizontalPanel();
    buttonPanel.add(btn);
    buttonPanel.add(btn2);

    panel.add(buttonPanel);

    return panel;
  }
}

