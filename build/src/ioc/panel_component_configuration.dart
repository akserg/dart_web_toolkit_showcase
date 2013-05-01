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

part of dart_web_toolkit_ioc;

/**
 * Components configuration.
 */
class PanelComponentConfiguration extends lost_dart.InCodeConfiguration {
  
  PanelComponentConfiguration() {

    // Panel
    add("AbsolutePanelModel", (lost_dart.Container container, Map params){
      return new AbsolutePanelModel();
    });
    
    add("CaptionPanelModel", (lost_dart.Container container, Map params){
      return new CaptionPanelModel();
    });
    
    add("DeckPanelModel", (lost_dart.Container container, Map params){
      return new DeckPanelModel();
    });
    
    add("DecoratedStackPanelModel", (lost_dart.Container container, Map params){
      return new DecoratedStackPanelModel();
    });
    
    add("DecoratedTabBarModel", (lost_dart.Container container, Map params){
      return new DecoratedTabBarModel();
    });
    
    add("DecoratedTabPanelModel", (lost_dart.Container container, Map params){
      return new DecoratedTabPanelModel();
    });
    
    add("DecoratorPanelModel", (lost_dart.Container container, Map params){
      return new DecoratorPanelModel();
    });
    
    add("DisclosurePanelModel", (lost_dart.Container container, Map params){
      return new DisclosurePanelModel();
    });
    
    add("DockPanelModel", (lost_dart.Container container, Map params){
      return new DockPanelModel();
    });
    
    add("FlexTableModel", (lost_dart.Container container, Map params){
      return new FlexTableModel();
    });
    
    add("FlowPanelModel", (lost_dart.Container container, Map params){
      return new FlowPanelModel();
    });
    
    add("FocusPanelModel", (lost_dart.Container container, Map params){
      return new FocusPanelModel();
    });
    
    add("FormPanelModel", (lost_dart.Container container, Map params){
      return new FormPanelModel();
    });
    
    add("FrameModel", (lost_dart.Container container, Map params){
      return new FrameModel();
    });
    
    add("GridModel", (lost_dart.Container container, Map params){
      return new GridModel();
    });
    
    add("HorizontalPanelModel", (lost_dart.Container container, Map params){
      return new HorizontalPanelModel();
    });
    add("HorizontalSplitPanelModel", (lost_dart.Container container, Map params){
      return new HorizontalSplitPanelModel();
    });
    
    add("HtmlPanelModel", (lost_dart.Container container, Map params){
      return new HtmlPanelModel();
    });
    
    add("NamedFrameModel", (lost_dart.Container container, Map params){
      return new NamedFrameModel();
    });
    
    add("ScrolledPanelModel", (lost_dart.Container container, Map params){
      return new ScrolledPanelModel();
    });
    
    add("SimplePanelModel", (lost_dart.Container container, Map params){
      return new SimplePanelModel();
    });
    
    add("StackPanelModel", (lost_dart.Container container, Map params){
      return new StackPanelModel();
    });
    
    add("TabBarModel", (lost_dart.Container container, Map params){
      return new TabBarModel();
    });
    
    add("TabPanelModel", (lost_dart.Container container, Map params){
      return new TabPanelModel();
    });
    
    add("VerticalPanelModel", (lost_dart.Container container, Map params){
      return new VerticalPanelModel();
    });
    
    add("VerticalSplitPanelModel", (lost_dart.Container container, Map params){
      return new VerticalSplitPanelModel();
    });
  }
}