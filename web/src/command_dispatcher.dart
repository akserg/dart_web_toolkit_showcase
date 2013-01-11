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
    widgetsPanel.add(new CommandButton("Button", "button.html", new shared.ClickHandler(_dispatch)));
    widgetsPanel.add(new CommandButton("Checkbox", "checkbox.html", new shared.ClickHandler(_dispatch)));
    widgetsPanel.add(new CommandButton("Radio Button", "radio_button.html", new shared.ClickHandler(_dispatch)));

  }

  /**
   * Create CommandButton per CommandItem and add it into panels panel.
   */
  void fillPanelsInPanel(ui.VerticalPanel panelsPanel) {
    panelsPanel.add(new CommandButton("Absolute Panel", "absolute_panel.html", new shared.ClickHandler(_dispatch)));
    panelsPanel.add(new CommandButton("Caption Panel", "caption_panel.html", new shared.ClickHandler(_dispatch)));
  }

  /**
   * Dispatch income event to open URL into frame.
   */
  void _dispatch(shared.ClickEvent event) {
    _frame.setUrl(event.getRelativeElement().dataAttributes["data"]);
  }
}