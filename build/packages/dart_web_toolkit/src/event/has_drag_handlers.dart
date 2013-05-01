//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
//Author: akserg

part of dart_web_toolkit_event;

/**
 * A widget that implements this interface provides registration for
 * {@link DragLeaveHandler} instances.
 *
 * <p>
 * <span style="color:red">Experimental API: This API is still under development
 * and is subject to change.
 * </span>
 * </p>
 */
abstract class HasDragHandlers extends HasHandlers {

  /**
   * Adds a {@link DragEvent} handler.
   *
   * @param handler the drag handler
   * @return {@link HandlerRegistration} used to remove this handler
   */
  HandlerRegistration addDragHandler(DragHandler handler);
}
