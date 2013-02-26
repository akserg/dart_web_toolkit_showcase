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

part of dart_web_toolkit_showcase;

/**
 * That class create set of CommandButton keeps CommandItem and add it into the panel.
 */
class CommandDispatcher {

  ui.Frame _frame;

  /**
   * Constructor. We specifying [Frame] widget to be recieving [CommandButton]
   * events.
   */
  CommandDispatcher(this._frame);

  /**
   * Create CommandButton per CommandItem and add it into panels panel.
   */
  void fillPanelsInPanel(ui.VerticalPanel panelsPanel) {
    panelsPanel.add(new CommandButton("Absolute Panel", "absolute_panel.html", new event.ClickHandlerAdapter(_dispatch)));
    panelsPanel.add(new CommandButton("Caption Panel", "caption_panel.html", new event.ClickHandlerAdapter(_dispatch)));
  }
  
  /**
   * Create and apply data provider to the [tree].
   */
  void createAndApplyDataProvider(ui.Tree tree) {
    // Create Widgets item
    ui.TreeItem widgetsItem = _createTreeItem(tree, new Command("Widgets", "widgets.html"));
    _createWidgets(widgetsItem);
    // Create Panels item
    ui.TreeItem panelsItem = _createTreeItem(tree, new Command("Panels", "panels.html")); 
    // Create Popups item
    ui.TreeItem popupsItem = _createTreeItem(tree, new Command("Popups", "popups.html"));
    // Add selection handler
    tree.addSelectionHandler(new event.SelectionHandlerAdapter((event.SelectionEvent evt){
      ui.TreeItem item = evt.getSelectedItem();
      String data = item.getUserObject() as String;
      _frame.setUrl(data);
    }));
    // Select first tree item in tree
    tree.setSelectedItem(widgetsItem, true);
  }

  /**
   * Create Widgets item content
   */
  void _createWidgets(ui.TreeItem item) {
    _createTreeItem(item, new Command("Button", "button.html"));
    _createTreeItem(item, new Command("Custom Button", "custom_button.html"));
    _createTreeItem(item, new Command("Checkbox", "checkbox.html"));
    _createTreeItem(item, new Command("Combo", "combo.html"));
    _createTreeItem(item, new Command("Date Label", "date_label.html"));
    _createTreeItem(item, new Command("File Upload", "file_upload.html"));
    _createTreeItem(item, new Command("Frame", "frame.html"));
    _createTreeItem(item, new Command("Html", "html.html"));
    _createTreeItem(item, new Command("Hyperlink", "hyperlink.html"));
    _createTreeItem(item, new Command("Image", "image.html"));
    _createTreeItem(item, new Command("Inline", "inline.html"));
    _createTreeItem(item, new Command("Numeric Boxes", "numeric_boxes.html"));
    _createTreeItem(item, new Command("Label", "label.html"));
    _createTreeItem(item, new Command("List Box", "list_box.html"));
    _createTreeItem(item, new Command("Password Text Box", "password_text_box.html"));
    _createTreeItem(item, new Command("Radio Button", "radio_button.html"));
    _createTreeItem(item, new Command("Push Button", "push_button.html"));
    _createTreeItem(item, new Command("Simple Radio Button and Check Box", "simple_buttons.html"));
    _createTreeItem(item, new Command("Tab Bar", "tab_bar.html"));
    _createTreeItem(item, new Command("Text Input", "text_input.html"));
    _createTreeItem(item, new Command("Toggle Button", "toggle_button.html"));
    _createTreeItem(item, new Command("Tree", "tree.html"));

  }
  
  /**
   * Create new TreeItem for parent and initialise it with [command] content.
   */
  ui.TreeItem _createTreeItem(var parent, Command command) {
    ui.TreeItem item = parent.addTextItem(command.label);
    item.setUserObject(command.data);
    return item;
  }
  
  /**
   * Dispatch income event to open URL into frame.
   */
  void _dispatch(event.ClickEvent event) {
    _frame.setUrl(event.getRelativeElement().dataset["data"]);
  }
}