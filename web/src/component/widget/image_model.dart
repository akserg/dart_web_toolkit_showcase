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
  String get desc => "A widget that displays the image at a given URL. The image can be in 'unclipped' mode (the default) or 'clipped' mode. In clipped mode, a viewport is overlaid on top of the image so that a subset of the image will be displayed. In unclipped mode, there is no viewport - the entire image will be visible. Whether an image is in clipped or unclipped mode depends on how the image is constructed, and how it is transformed after construction. Methods will operate differently depending on the mode that the image is in. These differences are detailed in the documentation for each method.";
  
  // Return code snipet how to use component
  String get code {
    return '''
ui.Button btn = new ui.Button("Clip this image");
ui.Button btn2 = new ui.Button("Restore image");
String uri = "http://www.google.com/images/logo.gif";

// Create an image, not yet referencing a URL. We make it final so that we
// can manipulate the image object within the ClickHandlers for the buttons.
ui.Image image = new ui.Image(uri);

// When the user clicks this button, we want to clip the image.
btn.addClickHandler(new event.ClickHandlerAdapter((event.ClickEvent evt) {
  image.setVisibleRect(70, 0, 47, 110);
}));
btn.setWidth("120px");

// When the user clicks this button, we want to restore the image to its
// unclipped state.
btn2.addClickHandler(new event.ClickHandlerAdapter((event.ClickEvent evt) {
  image.setUrl(uri);
}));
btn2.setWidth("120px");

// Add the image, label, and clip/restore buttons to the root panel.
ui.VerticalPanel panel = new ui.VerticalPanel();
panel.add(image);

ui.HorizontalPanel buttonPanel = new ui.HorizontalPanel();
buttonPanel.add(btn);
buttonPanel.add(btn2);

panel.add(buttonPanel);

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
    
    ui.Button btn = new ui.Button("Clip this image");
    ui.Button btn2 = new ui.Button("Restore image");
    String uri = "http://www.google.com/images/logo.gif";
    
    // Create an image, not yet referencing a URL. We make it final so that we
    // can manipulate the image object within the ClickHandlers for the buttons.
    ui.Image image = new ui.Image(uri);

    // When the user clicks this button, we want to clip the image.
    btn.addClickHandler(new event.ClickHandlerAdapter((event.ClickEvent evt) {
      image.setVisibleRect(70, 0, 47, 110);
    }));
    btn.setWidth("120px");

    // When the user clicks this button, we want to restore the image to its
    // unclipped state.
    btn2.addClickHandler(new event.ClickHandlerAdapter((event.ClickEvent evt) {
      image.setUrl(uri);
    }));
    btn2.setWidth("120px");

    // Add the image, label, and clip/restore buttons to the root panel.
    ui.VerticalPanel panel = new ui.VerticalPanel();
    panel.add(image);

    ui.HorizontalPanel buttonPanel = new ui.HorizontalPanel();
    buttonPanel.add(btn);
    buttonPanel.add(btn2);

    panel.add(buttonPanel);

    return panel;
  }
}

