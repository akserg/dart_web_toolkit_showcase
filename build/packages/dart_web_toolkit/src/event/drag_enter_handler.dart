//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
//Author: akserg

part of dart_web_toolkit_event;

/**
 * Handler interface for {@link DragEnterEvent} events.
 */
abstract class DragEnterHandler extends EventHandler {

  /**
   * Called when a {@link DragEnterEvent} is fired.
   *
   * @param event the {@link DragEnterEvent} that was fired
   */
  void onDragEnter(DragEnterEvent event);
}
