//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
//Author: akserg

part of dart_web_toolkit_event;

/**
 * A widget that implements this interface provides registration for
 * {@link DoubleClickHandler} instances.
 */
abstract class HasDoubleClickHandlers extends HasHandlers {
  /**
   * Adds a {@link DoubleClickEvent} handler.
   *
   * @param handler the double click handler
   * @return {@link HandlerRegistration} used to remove this handler
   */
  HandlerRegistration addDoubleClickHandler(DoubleClickHandler handler);
}
