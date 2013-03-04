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

library summary;

import 'dart:html' as dart_html;

import 'package:dart_web_toolkit/event.dart' as event;
import 'package:dart_web_toolkit/ui.dart' as ui;

void main() {

  // Create a vertical panel to align the content
  ui.VerticalPanel vPanel = new ui.VerticalPanel();

  // Add a label
  vPanel.add(new ui.Html("Select a file:"));

  // Add a file upload widget
  ui.FileUpload fileUpload = new ui.FileUpload();
  vPanel.add(fileUpload);

  // Add a button to upload the file
  ui.Button uploadButton = new ui.Button("Upload File");
  uploadButton.addClickHandler(new event.ClickHandlerAdapter((event.ClickEvent event) {
    String filename = fileUpload.getFilename();
    if (filename.length == 0) {
      dart_html.window.alert("You must select a file to upload");
    } else {
      dart_html.window.alert("File Uploaded!");
    }
  }));
  vPanel.add(new ui.Html("<br>"));
  vPanel.add(uploadButton);

  ui.RootPanel.get().add(vPanel);
}