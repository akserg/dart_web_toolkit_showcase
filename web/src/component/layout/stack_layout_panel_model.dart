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

class StackLayoutPanelModel extends mvp.ViewModel {
  
  // Component's category name
  String get category => "Layout";
  
  // Return component's name
  String get name => "StackLayoutPanel";
  
  // Return component's description
  String get desc => '''
A panel that stacks its children vertically, displaying only one at a time, with 
a header for each child which the user can click to display.

This widget will only work in standards mode, which requires that the HTML page 
in which it is run have an explicit <!DOCTYPE> declaration.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
// Create a new stack layout panel.
ui.StackLayoutPanel stackPanel = new ui.StackLayoutPanel(util.Unit.PX);
stackPanel.setHeight("100%");
//stackPanel.setPixelSize(200, 400);

// Add the Mail folders.
ui.Widget mailHeader = _createHeaderWidget("Mail");
stackPanel.addWidget(_createMailItem(), "Mail", false, 25.0);

// Add a list of filters.
stackPanel.addWidget(_createFiltersItem(["All", "Starred", "Read", "Unread", "Recent", "Sent by me"]), "<b>Filters</b>", true, 25.0);

// Add a list of contacts.
ui.Widget contactsHeader = _createHeaderWidget("Contacts");
stackPanel.addWidget(_createContactsItem(), "Contacts", false, 25.0);

return stackPanel;

/**
 * Create a widget to display in the header that includes an image and some
 * text.
 *
 * @param text the header text
 * @param image the {@link ImageResource} to add next to the header
 * @return the header widget
 */
ui.Widget _createHeaderWidget(String text) {
  // Add the image and text to a horizontal panel
  ui.HorizontalPanel hPanel = new ui.HorizontalPanel();
  hPanel.setHeight("100%");
  hPanel.spacing = 0;
  hPanel.setVerticalAlignment(i18n.HasVerticalAlignment.ALIGN_MIDDLE);
  //hPanel.add(new Image(image));
  ui.Button headerText = new ui.Button(text);
  headerText.clearAndSetStyleName("cw-StackPanelHeader");
  hPanel.add(headerText);
  return new ui.SimplePanel(hPanel);
}

ui.VerticalPanel _createMailItem() {
  ui.VerticalPanel mailsPanel = new ui.VerticalPanel();
  mailsPanel.setSize("100%", "100%");
  mailsPanel.spacing = 4;
  mailsPanel.add(new ui.Button("Refresh"));
  return mailsPanel;
}

ui.VerticalPanel _createFiltersItem(List<String> filters){
  ui.VerticalPanel filtersPanel = new ui.VerticalPanel();
  filtersPanel.setSize("100%", "100%");
  filtersPanel.spacing = 4;
  for (String filter in filters) {
    filtersPanel.add(new ui.CheckBox(filter));
  }
  return filtersPanel;
}

ui.VerticalPanel _createContactsItem() {
  // Create a popup to show the contact info when a contact is clicked
  ui.VerticalPanel contactPopupContainer = new ui.VerticalPanel();
  contactPopupContainer.setSize("100%", "100%");
  contactPopupContainer.spacing = 5;
  String name = "contacts";
  contactPopupContainer.add(new ui.RadioButton(name, "Name 1", false));
  contactPopupContainer.add(new ui.RadioButton(name, "Name 2", false));
  contactPopupContainer.add(new ui.RadioButton(name, "Name 3", false));
  return contactPopupContainer;
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
    
    // Create a new stack layout panel.
    ui.StackLayoutPanel stackPanel = new ui.StackLayoutPanel(util.Unit.PX);
    stackPanel.setHeight("100%");
    //stackPanel.setPixelSize(200, 400);

    // Add the Mail folders.
    ui.Widget mailHeader = _createHeaderWidget("Mail");
    stackPanel.addWidget(_createMailItem(), "Mail", false, 25.0);

    // Add a list of filters.
    stackPanel.addWidget(_createFiltersItem(["All", "Starred", "Read", "Unread", "Recent", "Sent by me"]), "<b>Filters</b>", true, 25.0);

    // Add a list of contacts.
    ui.Widget contactsHeader = _createHeaderWidget("Contacts");
    stackPanel.addWidget(_createContactsItem(), "Contacts", false, 25.0);

    return stackPanel;
  }
  
  /**
   * Create a widget to display in the header that includes an image and some
   * text.
   *
   * @param text the header text
   * @param image the {@link ImageResource} to add next to the header
   * @return the header widget
   */
  ui.Widget _createHeaderWidget(String text) {
    // Add the image and text to a horizontal panel
    ui.HorizontalPanel hPanel = new ui.HorizontalPanel();
    hPanel.setHeight("100%");
    hPanel.spacing = 0;
    hPanel.setVerticalAlignment(i18n.HasVerticalAlignment.ALIGN_MIDDLE);
    //hPanel.add(new Image(image));
    ui.Button headerText = new ui.Button(text);
    headerText.clearAndSetStyleName("cw-StackPanelHeader");
    hPanel.add(headerText);
    return new ui.SimplePanel(hPanel);
  }

  ui.VerticalPanel _createMailItem() {
    ui.VerticalPanel mailsPanel = new ui.VerticalPanel();
    mailsPanel.setSize("100%", "100%");
    mailsPanel.spacing = 4;
    mailsPanel.add(new ui.Button("Refresh"));
    return mailsPanel;
  }

  ui.VerticalPanel _createFiltersItem(List<String> filters){
    ui.VerticalPanel filtersPanel = new ui.VerticalPanel();
    filtersPanel.setSize("100%", "100%");
    filtersPanel.spacing = 4;
    for (String filter in filters) {
      filtersPanel.add(new ui.CheckBox(filter));
    }
    return filtersPanel;
  }

  ui.VerticalPanel _createContactsItem() {
    // Create a popup to show the contact info when a contact is clicked
    ui.VerticalPanel contactPopupContainer = new ui.VerticalPanel();
    contactPopupContainer.setSize("100%", "100%");
    contactPopupContainer.spacing = 5;
    String name = "contacts";
    contactPopupContainer.add(new ui.RadioButton(name, "Name 1", false));
    contactPopupContainer.add(new ui.RadioButton(name, "Name 2", false));
    contactPopupContainer.add(new ui.RadioButton(name, "Name 3", false));
    return contactPopupContainer;
  }
}

