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

library summary;

import 'dart:html' as dart_html;

import 'package:dart_web_toolkit/event.dart' as event;
import 'package:dart_web_toolkit/ui.dart' as ui;

void main() {

// Create a tab bar with three items.
  ui.TabBar bar = new ui.TabBar();
  bar.addTabText("foo");
  bar.addTabText("bar");
  bar.addTabText("baz");

  // Hook up a tab listener to do something when the user selects a tab.
  bar.addSelectionHandler(new event.SelectionHandlerAdapter((event.SelectionEvent event) {
    // Let the user know what they just did.
    dart_html.window.alert("You clicked tab ${event.getSelectedItem()}");
  }));

  // Just for fun, let's disallow selection of 'bar'.
  bar.addBeforeSelectionHandler(new event.BeforeSelectionHandlerAdapter((event.BeforeSelectionEvent event) {
    if (event.getItem().intValue() == 1) {
      event.cancel();
    }
  }));

  // Add it to the root panel.
  ui.RootPanel.get().add(bar);
}