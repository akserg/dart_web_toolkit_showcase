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

/**
 * Application library.
 * Contains entry point in application.
 */
library dart_web_toolkit_app;

import 'dart:html' as dart_html;

import 'package:dart_web_toolkit/event.dart' as event;
import 'package:dart_web_toolkit/ui.dart' as ui;
import 'package:dart_web_toolkit/util.dart' as util;
import 'package:dart_web_toolkit/i18n.dart' as i18n;
import 'package:dart_web_toolkit/core.dart' as core;

import 'ioc.dart' as ioc;
import 'mvp.dart' as mvp;

part 'app/app_presenter.dart';
part 'app/app_view.dart';
part 'app/style_chooser_component.dart';

void main() {
  // Remove 'loading indicator
  dart_html.query("#loading").remove();
  
  // Create instance of IOC container
  ioc.Context.init();
  
  // Resolve Application Presenter
  AppPresenter app = ioc.Context.resolve("AppPresenter");
  // Add view to to RootLayoutPanel
  app.addViewTo(ui.RootLayoutPanel.get());
  
}
