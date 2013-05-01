//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
//Author: akserg

part of dart_web_toolkit_event;

/**
 * A widget that implements this interface provides registration for
 * {@link MouseOverHandler} instances.
 */
abstract class HasMouseOverHandlers extends HasHandlers {
  /**
   * Adds a {@link MouseOverEvent} handler.
   *
   * @param handler the mouse over handler
   * @return {@link HandlerRegistration} used to remove this handler
   */
  HandlerRegistration addMouseOverHandler(MouseOverHandler handler);
}
