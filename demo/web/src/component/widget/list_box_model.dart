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

class ListBoxModel extends mvp.ViewModel {
  
  // Component's category name
  String get category => "Widget";
  
  // Return component's name
  String get name => "ListBox";
  
  // Return component's description
  String get desc => "A widget that presents a list of choices to the user.";
  
  // Return code snipet how to use component
  String get code {
    return '''
const String NOTHING = "nothing";

// Create a panel to align the Widgets
ui.HorizontalPanel hPanel = new ui.HorizontalPanel();
hPanel.spacing = 20;

ui.Label selectedBox = new ui.Label(NOTHING);
List<String> listTypes = ["Car Type", "Sport", "City"];

// Add a list box with multiple selection enabled
ui.ListBox multiBox = new ui.ListBox(true);
multiBox.setWidth("11em");
multiBox.setVisibleItemCount(4);
for (int i = 0; i < listTypes.length; i++) {
  multiBox.addItem(listTypes[i]);
}
ui.VerticalPanel multiBoxPanel = new ui.VerticalPanel();
multiBoxPanel.spacing = 4;
multiBoxPanel.add(new ui.Html("Select all that apply:"));
multiBoxPanel.add(multiBox);
hPanel.add(multiBoxPanel);

// Add a handler to handle drop box events
multiBox.addChangeHandler(new event.ChangeHandlerAdapter((event.ChangeEvent event){
  StringBuffer sb = new StringBuffer();
  if (multiBox.isMultipleSelect()) {
    for (int i = 0; i < multiBox.getItemCount(); i++) {
      String txt = multiBox.getItemText(i);
      if (multiBox.isItemSelected(i)) {
        if (sb.length > 0) {
          sb.write(", ");
        }
        sb.write(txt);
      }
    }
  } else {
    sb.write(multiBox.getItemText(multiBox.getSelectedIndex()));
  }
  selectedBox.text = sb.toString().length > 0 ? sb.toString() : NOTHING;
}));

// Add a drop box with the list types
ui.VerticalPanel dropBoxPanel = new ui.VerticalPanel();
dropBoxPanel.spacing = 4;
dropBoxPanel.add(new ui.Html("Selected:"));
dropBoxPanel.add(selectedBox);
hPanel.add(dropBoxPanel);

return hPanel;
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
    
    const String NOTHING = "nothing";
    
    // Create a panel to align the Widgets
    ui.HorizontalPanel hPanel = new ui.HorizontalPanel();
    hPanel.spacing = 20;

    ui.Label selectedBox = new ui.Label(NOTHING);
    List<String> listTypes = ["Car Type", "Sport", "City"];
    
    // Add a list box with multiple selection enabled
    ui.ListBox multiBox = new ui.ListBox(true);
    multiBox.setWidth("11em");
    multiBox.setVisibleItemCount(4);
    for (int i = 0; i < listTypes.length; i++) {
      multiBox.addItem(listTypes[i]);
    }
    ui.VerticalPanel multiBoxPanel = new ui.VerticalPanel();
    multiBoxPanel.spacing = 4;
    multiBoxPanel.add(new ui.Html("Select all that apply:"));
    multiBoxPanel.add(multiBox);
    hPanel.add(multiBoxPanel);

    // Add a handler to handle drop box events
    multiBox.addChangeHandler(new event.ChangeHandlerAdapter((event.ChangeEvent event){
      StringBuffer sb = new StringBuffer();
      if (multiBox.isMultipleSelect()) {
        for (int i = 0; i < multiBox.getItemCount(); i++) {
          String txt = multiBox.getItemText(i);
          if (multiBox.isItemSelected(i)) {
            if (sb.length > 0) {
              sb.write(", ");
            }
            sb.write(txt);
          }
        }
      } else {
        sb.write(multiBox.getItemText(multiBox.getSelectedIndex()));
      }
      selectedBox.text = sb.toString().length > 0 ? sb.toString() : NOTHING;
    }));

    // Add a drop box with the list types
    ui.VerticalPanel dropBoxPanel = new ui.VerticalPanel();
    dropBoxPanel.spacing = 4;
    dropBoxPanel.add(new ui.Html("Selected:"));
    dropBoxPanel.add(selectedBox);
    hPanel.add(dropBoxPanel);
    
    return hPanel;
  }
  
  /**
   * Display the options for a given category in the list box.
  *
   * @param listBox the ListBox to add the options to
   * @param category the category index
   */
  void showCategory(ui.ListBox listBox, int category) {
    listBox.clear();
    List<String> listData = null;
    switch (category) {
      case 0:
        listData = ["compact", "sedan", "coupe", "convertable", "SUV", "truck"];
        break;
      case 1:
        listData = ["Baseball", "Basketball", "Footbal"];
        break;
      case 2:
        listData = ["Paris", "London"];
        break;
    }
    for (int i = 0; i < listData.length; i++) {
      listBox.addItem(listData[i]);
    }
  }
}

