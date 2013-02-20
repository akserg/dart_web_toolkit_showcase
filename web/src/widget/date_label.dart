//Copyright (C) 2012 Sergey Akopkokhyants. All Rights Reserved.
//Author: akserg

library summary;

import 'dart:html' as dart_html;

import 'package:dart_web_toolkit/i18n.dart' as i18n;
import 'package:dart_web_toolkit/ui.dart' as ui;
import 'package:dart_web_toolkit/event.dart' as event;

void main() {

  ui.VerticalPanel vpanel = new ui.VerticalPanel();
  vpanel.spacing = 10;

  ui.HorizontalPanel hpanel1 = new ui.HorizontalPanel();
  hpanel1.spacing = 5;
  vpanel.add(hpanel1);
  
  ui.Label label = new ui.Label("Format:");
  hpanel1.add(label);
  
  ui.ListBox dateFormats = new ui.ListBox();
  List<String> dateFormatConsts = ["RFC_2822", 
                                   "DATE_FULL", "DATE_LONG", "DATE_MEDIUM", "DATE_SHORT", 
                                   "TIME_FULL", "TIME_LONG", "TIME_MEDIUM", "TIME_SHORT",
                                   "DATE_TIME_FULL", "DATE_TIME_LONG", "DATE_TIME_MEDIUM", "DATE_TIME_SHORT"];
  
  List<i18n.PredefinedFormat> formats = [i18n.PredefinedFormat.RFC_2822,
                                         
                                         i18n.PredefinedFormat.DATE_FULL,
                                         i18n.PredefinedFormat.DATE_LONG,
                                         i18n.PredefinedFormat.DATE_MEDIUM,
                                         i18n.PredefinedFormat.DATE_SHORT,
                                         
                                         i18n.PredefinedFormat.TIME_FULL,
                                         i18n.PredefinedFormat.TIME_LONG,
                                         i18n.PredefinedFormat.TIME_MEDIUM,
                                         i18n.PredefinedFormat.TIME_SHORT,
                                         
                                         i18n.PredefinedFormat.DATE_TIME_FULL,
                                         i18n.PredefinedFormat.DATE_TIME_LONG,
                                         i18n.PredefinedFormat.DATE_TIME_MEDIUM,
                                         i18n.PredefinedFormat.DATE_TIME_SHORT];
  
  
  for (int i = 0; i < dateFormatConsts.length; i++) {
    dateFormats.addItem(dateFormatConsts[i], i.toString());
  }
  hpanel1.add(dateFormats);
  
  ui.HorizontalPanel hpanel2 = new ui.HorizontalPanel();
  hpanel2.spacing = 5;
  vpanel.add(hpanel2);
  
  ui.RootPanel.get().add(vpanel);
  
  applyDateFormat(hpanel2, formats[0]);
  
  // Add a handler to handle dateFormats events
  dateFormats.addChangeHandler(new event.ChangeHandlerAdapter((event.ChangeEvent event){
    applyDateFormat(hpanel2, formats[dateFormats.getSelectedIndex()]);
  }));
}

void applyDateFormat(ui.HorizontalPanel hpanel, i18n.PredefinedFormat format) {
  // Remove all widgets
  hpanel.clear();
  // Add label
  ui.Label label = new ui.Label("Date Label:");
  hpanel.add(label);
  // Add frmatted data label
  ui.DateLabel dLabel = new ui.DateLabel(i18n.DateTimeFormat.getPredefinedFormat(format));
  dLabel.setValue(new DateTime.now());
  hpanel.add(dLabel);
}