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
 * Adapter context hides IOC implementation and manages instances of entities. 
 */
library dart_web_toolkit_ioc;

import 'package:lost_dart/lost_dart.dart' as lost_dart;

import 'app.dart';
import 'home.dart';
import 'component.dart';

part 'ioc/app_configuration.dart';
part 'ioc/home_configuration.dart';
part 'ioc/component_configuration.dart';
part 'ioc/widget_component_configuration.dart';
part 'ioc/popup_component_configuration.dart';
part 'ioc/panel_component_configuration.dart';
part 'ioc/layout_component_configuration.dart';

/**
 * This class is adapter to implementation real IOC and
 * make migration from one IOC implem entation to other
 * with small effort.
 */
class Context {
  
  static final lost_dart.Container _container = new lost_dart.Container();
  
  /**
   * Resolve object by [id]. Map of [params] might be useful
   * to create new instance of object.
   */
  static resolve(String id, [Map params]) {
    return _container.resolve(id, params);
  }
  
  /**
   * Initialise ApplicationContext with internal
   * configurations.
   */
  static init() {
    _container.addAll([new AppConfiguration(),
                       new HomeConfiguration(),
                       new ComponentConfiguration(),
                       new WidgetComponentConfiguration(),
                       new PopupComponentConfiguration(),
                       new PanelComponentConfiguration(),
                       new LayoutComponentConfiguration()
    ]);
  }
}