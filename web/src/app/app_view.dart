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

part of dart_web_toolkit_app;

class AppView extends ui.Composite implements AppPresenterDisplay {

  ui.TabLayoutPanel centerPanel;
  
  List<mvp.View> _pages;
  
  AppView() {
    // Main panel
    ui.DockLayoutPanel mainPanel = new ui.DockLayoutPanel(util.Unit.PX);
    initWidget(mainPanel);
    
    // Create Top content
    ui.DockLayoutPanel topPanel = new ui.DockLayoutPanel(util.Unit.PX);
    topPanel.addStyleName("topPanel");
    topPanel.setSize("100%", "100%");

    StyleChooserComponent styleChooser = new StyleChooserComponent("Style:");
    topPanel.addEast(styleChooser, 120.0);
    
    // Add top panel to main
    mainPanel.addNorth(topPanel, 25.0);
    // Add Product name
    ui.Label headerContent = new ui.Label("Dart Web Toolkit Showcase (ver ${core.DWT.majorVersion}.${core.DWT.minorVersion})");
    headerContent.addStyleName("header-content");
    topPanel.add(headerContent);
    
    // Create status content
    ui.DockLayoutPanel statusPanel = new ui.DockLayoutPanel(util.Unit.PX);
    statusPanel.addStyleName("statusPanel");
    statusPanel.setSize("100%", "100%");
    // Add top panel to main
    mainPanel.addSouth(statusPanel, 20.0);
    // Add Product name
    ui.Label copyright = new ui.Label("Copyright 2012-2013 Sergey Akopkokhyants");
    copyright.addStyleName("copyright");
    statusPanel.add(copyright);

    // Create Center panel
    centerPanel = new ui.TabLayoutPanel(25.0, util.Unit.PX);
    centerPanel.setAnimationDuration(1000);
    centerPanel.addStyleName("centerPanel");
    centerPanel.setSize("100%", "100%");
    // Add center panel to main
    mainPanel.add(centerPanel);
  }

  void set pages(List<mvp.Presenter> values) {
    centerPanel.clear();
    values.forEach((mvp.Presenter presenter){
      presenter.addViewTo(centerPanel);
    });
  }
  
  ui.Widget asWidget() {
    return this;
  }
}