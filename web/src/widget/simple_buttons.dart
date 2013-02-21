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
  ui.VerticalPanel vpanel = new ui.VerticalPanel();
  vpanel.spacing = 5;
  
  ui.SimpleCheckBox sCheckBox = new ui.SimpleCheckBox();
  sCheckBox.setValue(true);
  vpanel.add(sCheckBox);

  ui.SimpleRadioButton rCheckBox1 = new ui.SimpleRadioButton("SimpleRadioButtonGroup");
  rCheckBox1.setValue(true);
  vpanel.add(rCheckBox1);

  ui.SimpleRadioButton rCheckBox2 = new ui.SimpleRadioButton("SimpleRadioButtonGroup");
  vpanel.add(rCheckBox2);
  
  ui.RootPanel.get().add(vpanel);
}