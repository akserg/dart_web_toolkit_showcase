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
   * Create CommandButton per CommandItem and add it into widgets panel.
   */
  void fillWidgetsInPanel(ui.VerticalPanel widgetsPanel) {
    widgetsPanel.add(new CommandButton("Button", "button.html", new event.ClickHandlerAdapter(_dispatch)));
    widgetsPanel.add(new CommandButton("Custom Button", "custom_button.html", new event.ClickHandlerAdapter(_dispatch)));
    widgetsPanel.add(new CommandButton("Checkbox", "checkbox.html", new event.ClickHandlerAdapter(_dispatch)));
    widgetsPanel.add(new CommandButton("Combo", "combo.html", new event.ClickHandlerAdapter(_dispatch)));
    widgetsPanel.add(new CommandButton("Date Label", "date_label.html", new event.ClickHandlerAdapter(_dispatch)));
    widgetsPanel.add(new CommandButton("File Upload", "file_upload.html", new event.ClickHandlerAdapter(_dispatch)));
    widgetsPanel.add(new CommandButton("Frame", "frame.html", new event.ClickHandlerAdapter(_dispatch)));
    widgetsPanel.add(new CommandButton("Html", "html.html", new event.ClickHandlerAdapter(_dispatch)));
    widgetsPanel.add(new CommandButton("Hyperlink", "hyperlink.html", new event.ClickHandlerAdapter(_dispatch)));
    widgetsPanel.add(new CommandButton("Image", "image.html", new event.ClickHandlerAdapter(_dispatch)));
    widgetsPanel.add(new CommandButton("Inline", "inline.html", new event.ClickHandlerAdapter(_dispatch)));
    widgetsPanel.add(new CommandButton("Numeric Boxes", "numeric_boxes.html", new event.ClickHandlerAdapter(_dispatch)));
    widgetsPanel.add(new CommandButton("Label", "label.html", new event.ClickHandlerAdapter(_dispatch)));
    widgetsPanel.add(new CommandButton("List Box", "list_box.html", new event.ClickHandlerAdapter(_dispatch)));
    widgetsPanel.add(new CommandButton("Password Text Box", "password_text_box.html", new event.ClickHandlerAdapter(_dispatch)));
    widgetsPanel.add(new CommandButton("Radio Button", "radio_button.html", new event.ClickHandlerAdapter(_dispatch)));
    widgetsPanel.add(new CommandButton("Push Button", "push_button.html", new event.ClickHandlerAdapter(_dispatch)));
    widgetsPanel.add(new CommandButton("Simple Radio Button and Check Box", "simple_buttons.html", new event.ClickHandlerAdapter(_dispatch)));
    widgetsPanel.add(new CommandButton("Tab Bar", "tab_bar.html", new event.ClickHandlerAdapter(_dispatch)));
    widgetsPanel.add(new CommandButton("Text Input", "text_input.html", new event.ClickHandlerAdapter(_dispatch)));
    widgetsPanel.add(new CommandButton("Toggle Button", "toggle_button.html", new event.ClickHandlerAdapter(_dispatch)));
    widgetsPanel.add(new CommandButton("Tree", "tree.html", new event.ClickHandlerAdapter(_dispatch)));
  }

  /**
   * Create CommandButton per CommandItem and add it into panels panel.
   */
  void fillPanelsInPanel(ui.VerticalPanel panelsPanel) {
    panelsPanel.add(new CommandButton("Absolute Panel", "absolute_panel.html", new event.ClickHandlerAdapter(_dispatch)));
    panelsPanel.add(new CommandButton("Caption Panel", "caption_panel.html", new event.ClickHandlerAdapter(_dispatch)));
  }

  /**
   * Dispatch income event to open URL into frame.
   */
  void _dispatch(event.ClickEvent event) {
    _frame.setUrl(event.getRelativeElement().dataset["data"]);
  }
}