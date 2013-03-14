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
class ComponentConfiguration extends lost_dart.InCodeConfiguration {
  
  ComponentConfiguration() {
    
    // Add Component Page
    add("ComponentView", (lost_dart.Container container, Map params){
      ComponentView view = new ComponentView();
      // Set internal view
      view.componentTree = container.resolve("ComponentTreeView");
      view.componentPreview = container.resolve("ComponentPreview");
      //
      return view;
    });
    
    // Add Component Presenter
    add("ComponentPresenter", (lost_dart.Container container, Map params){
      ComponentPresenter presenter = new ComponentPresenter();
      // Set presenter's view
      presenter.display = container.resolve("ComponentView");
      // Set list of ComponentModels
      presenter.models = container.resolve("componentModels");
      //
      return presenter;
    });
    
    // Add Component Manager
    add("ComponentTreeView", (lost_dart.Container container, Map params){
      return new ComponentTreeView();
    });
    
    // Add Component Manager
    add("ComponentPreview", (lost_dart.Container container, Map params){
      return new ComponentPreview();
    });
    
    // Add List of Component Model
    add("componentModels", (lost_dart.Container container, Map params){
      return [new ButtonModel(), 
              new CheckBoxModel(),
              new CompositeModel(),
              new DateBoxModel(),
              new DatePickerModel(),
              new DoubleBoxModel(),
              new FileUploadModel(),
              new HiddenModel(),
              new HtmlModel(),
              new HyperlinkModel(),
              new ImageModel(),
              new InlineHtmlModel(),
//              new InlineHyperlinkModel()
      ];
    });
    
    
  }
}



