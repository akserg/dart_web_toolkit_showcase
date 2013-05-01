//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
//Author: akserg

part of dart_web_toolkit_event;

/**
 * A widget that implements this interface provides registration for
 * {@link DragOverHandler} instances.
 *
 * <p>
 * <span style="color:red">Experimental API: This API is still under development
 * and is subject to change.
 * </span>
 * </p>
 */
abstract class HasDragOverHandlers extends HasHandlers {
  /**
   * Adds a {@link DragOverEvent} handler.
   *
   * @param handler the drag over handler
   * @return {@link HandlerRegistration} used to remove this handler
   */
  HandlerRegistration addDragOverHandler(DragOverHandler handler);
}
