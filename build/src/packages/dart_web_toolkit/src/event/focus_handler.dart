//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
//Author: akserg

part of dart_web_toolkit_event;

/**
 * Handler interface for {@link FocusEvent} events.
 */
abstract class FocusHandler extends EventHandler {

  /**
   * Called when FocusEvent is fired.
   *
   * @param event the {@link FocusEvent} that was fired
   */
  void onFocus(FocusEvent event);
}
