//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
//Author: akserg

library summary;

import 'dart:html' as dart_html;

import '../../dart_web_toolkit/ui.dart';

void main() {

// Create a vertical panel to align the radio buttons
  VerticalPanel vPanel = new VerticalPanel();
  vPanel.add(new Html("<b>Select your favorite color:</b>"));

  // Add some radio buttons to a group called 'color'
  List<String> colors = ["blue", "red", "yellow", "green"];
  for (int i = 0; i < colors.length; i++) {
    String color = colors[i];
    RadioButton radioButton = new RadioButton("color", color);
    if (i == 2) {
      radioButton.enabled = false;
    }
    vPanel.add(radioButton);
  }

  // Add a new header to select your favorite sport
  vPanel.add(new Html("<br>".concat("<b>Select your favorite sport:</b>")));

  // Add some radio buttons to a group called 'sport'
  List<String> sports = ["Baseball", "Basketball", "Football", "Hockey", "Soccer", "Water Polo"];
  for (int i = 0; i < sports.length; i++) {
    String sport = sports[i];
    RadioButton radioButton = new RadioButton("sport", sport);
    if (i == 2) {
      //radioButton.value = true;
    }
    vPanel.add(radioButton);
  }

  RootPanel.get().add(vPanel);
}