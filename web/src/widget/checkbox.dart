//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
//Author: akserg

library summary;

import 'dart:html' as dart_html;

import '../../dart_web_toolkit/event.dart' as event;
import '../../dart_web_toolkit/shared.dart' as shared;
import '../../dart_web_toolkit/ui.dart' as ui;
import '../../dart_web_toolkit/util.dart' as util;
import '../../dart_web_toolkit/i18n.dart' as i18n;

void main() {
  // Create a vertical panel to align the check boxes
  ui.VerticalPanel vPanel = new ui.VerticalPanel();
  ui.Html label = new ui.Html("Check all days that you are available:");
  vPanel.add(label);

  // Add a checkbox for each day of the week
  List<String> daysOfWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"];
  for (int i = 0; i < daysOfWeek.length; i++) {
    String day = daysOfWeek[i];
    ui.CheckBox checkBox = new ui.CheckBox(day);

    // Disable the weekends
    if (i >= 5) {
      checkBox.enabled = false;
    }

    vPanel.add(checkBox);
  }

  ui.RootPanel.get().add(vPanel);
}