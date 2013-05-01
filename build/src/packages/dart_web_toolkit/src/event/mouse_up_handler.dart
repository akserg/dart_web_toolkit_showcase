//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
//Author: akserg

part of dart_web_toolkit_event;

/**
 * Handler interface for {@link MouseUpEvent} events.
 */
abstract class MouseUpHandler extends EventHandler {

  /**
   * Called when MouseUpEvent is fired.
   *
   * @param event the {@link MouseUpEvent} that was fired
   */
  void onMouseUp(MouseUpEvent event);

}
