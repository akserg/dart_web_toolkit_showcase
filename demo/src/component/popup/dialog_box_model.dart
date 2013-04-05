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

class DialogBoxModel extends mvp.ViewModel {
  
  // Component's category name
  String get category => "Popup";
  
  // Return component's name
  String get name => "DialogBox";
  
  // Return component's description
  String get desc => '''
A form of popup that has a caption area at the top and can be dragged by the 
user. Unlike a PopupPanel, calls to PopupPanel.setWidth(String) and 
PopupPanel.setHeight(String) will set the width and height of the dialog box 
itself, even if a widget has not been added as yet.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
// Create the dialog box
ui.DialogBox dialogBox = _createDialogBox();
dialogBox.setGlassEnabled(false);
dialogBox.setAnimationEnabled(true);

// Create a button to show the popup
ui.Button openButton = new ui.Button("Show Dialog Box", new event.ClickHandlerAdapter((event.ClickEvent evt){
  dialogBox.show();
  dialogBox.center();
}));

return openButton;



/**
 * Create the dialog box for this example.
 *
 * @return the new dialog box
 */
ui.DialogBox _createDialogBox() {
  // Create a dialog box and set the caption text
  ui.DialogBox dialogBox = new ui.DialogBox();
  dialogBox.text = "Sample DialogBox";

  // Create a table to layout the content
  ui.VerticalPanel dialogContents = new ui.VerticalPanel();
  dialogContents.spacing = 4;
  dialogBox.setWidget(dialogContents);

  // Add some text to the top of the dialog
  ui.Html details = new ui.Html("This is an example of a standard dialog box component.");
  dialogContents.add(details);
  dialogContents.setWidgetCellHorizontalAlignment(details, i18n.HasHorizontalAlignment.ALIGN_CENTER);

  // Add an image to the dialog
  ui.Image image = new ui.Image("img/lights.png");
  dialogContents.add(image);
  dialogContents.setWidgetCellHorizontalAlignment(image, i18n.HasHorizontalAlignment.ALIGN_CENTER);

  // Add a close button at the bottom of the dialog
  ui.Button closeButton = new ui.Button("Close", new event.ClickHandlerAdapter((event.ClickEvent evt){
    dialogBox.hide();
  }));
  dialogContents.add(closeButton);
  if (i18n.LocaleInfo.getCurrentLocale().isRTL()) {
    dialogContents.setWidgetCellHorizontalAlignment(closeButton, i18n.HasHorizontalAlignment.ALIGN_LEFT);
  } else {
    dialogContents.setWidgetCellHorizontalAlignment(closeButton, i18n.HasHorizontalAlignment.ALIGN_RIGHT);
  }

  // Return the dialog box
  return dialogBox;
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
    
    // Create the dialog box
    ui.DialogBox dialogBox = _createDialogBox();
    dialogBox.setGlassEnabled(false);
    dialogBox.setAnimationEnabled(true);

    // Create a button to show the popup
    ui.Button openButton = new ui.Button("Show Dialog Box", new event.ClickHandlerAdapter((event.ClickEvent evt){
      dialogBox.show();
      dialogBox.center();
    }));
    
    return openButton;
  }
}

/**
 * Create the dialog box for this example.
 *
 * @return the new dialog box
 */
ui.DialogBox _createDialogBox() {
  // Create a dialog box and set the caption text
  ui.DialogBox dialogBox = new ui.DialogBox();
  dialogBox.text = "Sample DialogBox";

  // Create a table to layout the content
  ui.VerticalPanel dialogContents = new ui.VerticalPanel();
  dialogContents.spacing = 4;
  dialogBox.setWidget(dialogContents);

  // Add some text to the top of the dialog
  ui.Html details = new ui.Html("This is an example of a standard dialog box component.");
  dialogContents.add(details);
  dialogContents.setWidgetCellHorizontalAlignment(details, i18n.HasHorizontalAlignment.ALIGN_CENTER);

  // Add an image to the dialog
  ui.Image image = new ui.Image("img/lights.png");
  dialogContents.add(image);
  dialogContents.setWidgetCellHorizontalAlignment(image, i18n.HasHorizontalAlignment.ALIGN_CENTER);

  // Add a close button at the bottom of the dialog
  ui.Button closeButton = new ui.Button("Close", new event.ClickHandlerAdapter((event.ClickEvent evt){
    dialogBox.hide();
  }));
  dialogContents.add(closeButton);
  if (i18n.LocaleInfo.getCurrentLocale().isRTL()) {
    dialogContents.setWidgetCellHorizontalAlignment(closeButton, i18n.HasHorizontalAlignment.ALIGN_LEFT);
  } else {
    dialogContents.setWidgetCellHorizontalAlignment(closeButton, i18n.HasHorizontalAlignment.ALIGN_RIGHT);
  }

  // Return the dialog box
  return dialogBox;
}
