//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
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
    
    widgetsPanel.add(new CommandButton("Radio Button", "radio_button.html", new event.ClickHandlerAdapter(_dispatch)));

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
    _frame.setUrl(event.getRelativeElement().dataAttributes["data"]);
  }
}