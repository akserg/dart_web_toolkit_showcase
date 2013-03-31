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

part of dart_web_toolkit_home;

/**
 * The Home page contents main information about DWT showcase.
 */
class HomeView implements HomeDisplay {
  
  /**
   * Return page title.
   */
  String get title => "Home";
  
  /**
   * Return View as a [Widget].
   */
  ui.Widget asWidget() {
    ui.FlexTable layout = new ui.FlexTable();
    layout.setSize("100%", "100%");
    layout.setCellSpacing(6);
    ui.FlexCellFormatter cellFormatter = layout.getFlexCellFormatter();

    // Add a title
    ui.Html title = new ui.Html("<h2>Welcom to <strong>Dart Web Toolkit</strong> !</h2>");
    title.setWidth("80%");
    layout.setWidget(0, 0, title);
    cellFormatter.setHorizontalAlignment(0, 0, i18n.HasHorizontalAlignment.ALIGN_CENTER);

    // Add logo
    layout.setWidget(1, 0, new ui.Image("img/dwt-logo.png"));
    cellFormatter.setHorizontalAlignment(2, 0, i18n.HasHorizontalAlignment.ALIGN_CENTER);
    
    // Add description
    layout.setHtml(2, 0, "Dart Web Toolkit is a pure Dart application framework that works on all modern browsers.<br/>It enables you to create the best cross-platform applications using nothing but a browser.");
    cellFormatter.setHorizontalAlignment(1, 0, i18n.HasHorizontalAlignment.ALIGN_CENTER);
    
    // Wrap the content in a DecoratorPanel
    ui.DecoratorPanel decPanel = new ui.DecoratorPanel();
    decPanel.setWidget(layout);
    
    return layout;
  }
}
