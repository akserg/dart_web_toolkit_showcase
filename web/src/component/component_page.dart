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

part of dart_web_toolkit_component;

/**
 * The Widgets page keeps main information about widgets and panels using in 
 * framework.
 */
class ComponentPage implements Page {
  
  /**
   * Return page title.
   */
  String get title => "Components";
  
  TreeView _componentTree;
  ComponentPreview _componentPreview;
  
  /**
   * ComponentManager loading, pasring and instantiating components
   * by first request.
   */
  ComponentManager componentManager;
  
  ComponentPage() {
    componentManager = new ComponentManager();
  }
  
  /**
   * Return page content.
   */
  ui.Widget get content {
    // Create split layout panel
    ui.SplitLayoutPanel splitPanel = new ui.SplitLayoutPanel();

    // Create a tree view
    _componentTree = new TreeView(componentManager);
    // Create a container to hold the tree
    ui.ScrollPanel staticTreeWrapper = new ui.ScrollPanel(_componentTree.asWidget());
    staticTreeWrapper.setSize("100%", "100%");
    
    // Add componentTree wrapper to west side of split panel
    splitPanel.addWest(staticTreeWrapper, 200.0);

    // Add vertical split panel
    _componentPreview = new ComponentPreview();
    splitPanel.add(_componentPreview.asWidget());
    
    // Add selection event listener
    _componentTree.asWidget().addSelectionHandler(_componentPreview);
    
    // Refresh tree content
    _componentTree.refreshTree();
    
    return splitPanel;
  }
  
  
}
