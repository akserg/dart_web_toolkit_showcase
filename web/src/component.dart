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
 * Component library.
 * Contains list of all registered showcase for components.
 */
library dart_web_toolkit_component;

import 'dart:html' as dart_html;
import 'dart:math' as dart_math;

import 'package:dart_web_toolkit/event.dart' as event;
import 'package:dart_web_toolkit/ui.dart' as ui;
import 'package:dart_web_toolkit/util.dart' as util;
import 'package:dart_web_toolkit/i18n.dart' as i18n;
import 'package:dart_web_toolkit/scheduler.dart' as scheduler;

import 'mvp.dart' as mvp;

part 'component/component_view.dart';
part 'component/component_tree_view.dart';
part 'component/component_preview.dart';
part 'component/component_presenter.dart';

// Widget
part 'component/widget/button_model.dart';
part 'component/widget/checkbox_model.dart';
part 'component/widget/composite_model.dart';
part 'component/widget/date_box_model.dart';
part 'component/widget/date_picker_model.dart';
part 'component/widget/double_box_model.dart';
part 'component/widget/file_upload_model.dart';
part 'component/widget/hidden_model.dart';
part 'component/widget/html_model.dart';
part 'component/widget/hyperlink_model.dart';
part 'component/widget/image_model.dart';
part 'component/widget/inline_html_model.dart';
part 'component/widget/inline_hyperlink_model.dart';
part 'component/widget/inline_label_model.dart';
part 'component/widget/integer_box_model.dart';
part 'component/widget/label_model.dart';
part 'component/widget/list_box_model.dart';
part 'component/widget/menu_box_model.dart';
part 'component/widget/number_label_model.dart';
part 'component/widget/password_text_box_model.dart';
part 'component/widget/push_button_model.dart';
part 'component/widget/radio_button_model.dart';
part 'component/widget/rich_text_area_model.dart';
part 'component/widget/simple_check_box_model.dart';
part 'component/widget/simple_radio_button_model.dart';
part 'component/widget/suggest_box_model.dart';
part 'component/widget/text_area_model.dart';
part 'component/widget/text_box_model.dart';
part 'component/widget/toggle_button_model.dart';
part 'component/widget/tree_model.dart';

// Popup
part 'component/popup/dialog_box_model.dart';
part 'component/popup/popup_panel_model.dart';

// Panel
part 'component/panel/absolute_panel_model.dart';
part 'component/panel/caption_panel_model.dart';
part 'component/panel/deck_panel_model.dart';
part 'component/panel/decorated_stack_panel_model.dart';
part 'component/panel/decorated_tab_bar_model.dart';
part 'component/panel/decorated_tab_panel_model.dart';
part 'component/panel/decorator_panel_model.dart';
part 'component/panel/disclosure_panel_model.dart';
part 'component/panel/dock_panel_model.dart';
part 'component/panel/flex_table_model.dart';
part 'component/panel/flow_panel_model.dart';
part 'component/panel/focus_panel_model.dart';
part 'component/panel/form_panel_model.dart';
part 'component/panel/frame_model.dart';
part 'component/panel/grid_model.dart';
part 'component/panel/horizontal_panel_model.dart';
part 'component/panel/horizontal_split_panel_model.dart';
part 'component/panel/html_panel_model.dart';
part 'component/panel/named_frame_model.dart';
part 'component/panel/scrolled_panel_model.dart';
part 'component/panel/simple_panel_model.dart';
part 'component/panel/stack_panel_model.dart';
part 'component/panel/tab_bar_model.dart';
part 'component/panel/tab_panel_model.dart';
part 'component/panel/vertical_panel_model.dart';
part 'component/panel/vertical_split_panel_model.dart';

// Layout
part 'component/layout/dock_layout_panel_model.dart';
part 'component/layout/layout_panel_model.dart';
part 'component/layout/split_layout_panel_model.dart';
part 'component/layout/stack_layout_panel_model.dart';
part 'component/layout/tab_layout_panel_model.dart';