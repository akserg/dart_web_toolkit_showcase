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

import 'package:dart_web_toolkit/ui.dart' as ui;
import 'package:dart_web_toolkit/event.dart' as event;

void main() {

  //*********************************************************************************
  // Port of DnD Basic example from [https://github.com/dart-lang/dart-html5-samples]
  //*********************************************************************************

  ui.CaptionPanel panel = new ui.CaptionPanel("Caption Goes Here");
  ui.RootPanel.get().add(panel);

  panel.setContentWidget(new ui.Label("The main, wrapped widget goes here."));

  // Set up some style - normally you'd do this in CSS, but it's
  // easier to show like this

  event.Dom.setStyleAttribute(panel.getElement(), "border", "3px solid #00c");
  event.Dom.setStyleAttribute(panel.getContentWidget().getElement(), "margin", "5px 10px 10px 10px");
  event.Dom.setStyleAttribute(panel.getContentWidget().getElement(), "padding", "10px 10px 10px 10px");
  event.Dom.setStyleAttribute(panel.getContentWidget().getElement(), "border", "1px solid #ccf");
}
