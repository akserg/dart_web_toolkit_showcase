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

  // Create a panel to layout the widgets
  ui.VerticalPanel vpanel1 = new ui.VerticalPanel();
  vpanel1.spacing = 5;

  ui.DoubleBox dBox = new ui.DoubleBox();
  dBox.setMaxLength(10);
  dBox.setVisibleLength(5);
  dBox.setValue(123.4543453);
  vpanel1.add(dBox);

  ui.IntegerBox iBox = new ui.IntegerBox();
  iBox.setMaxLength(10);
  iBox.setVisibleLength(5);
  iBox.setValue(123123);
  vpanel1.add(iBox);

  ui.RootPanel.get().add(vpanel1);
}