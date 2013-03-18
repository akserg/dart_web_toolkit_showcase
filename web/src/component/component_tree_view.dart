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

class ComponentTreeView implements ComponentTreeDisplay {
  
  ui.Tree _tree;
  
  ComponentTreeView() {
    _tree = new ui.Tree();
    // Set animation enabled
    _tree.setAnimationEnabled(true);
  }
  
  ui.Tree asWidget() {
    return _tree;
  }
  
  /**
   * Refresh tree content
   */
  void setData(Map<String, List<mvp.ViewModel>> models) {
    _tree.removeItems();
    //
    models.forEach((String category, List<mvp.ViewModel> components) {
      // Create new top item
      ui.TreeItem topItem = _tree.addTextItem(category);
      // Create leaves in top item
      components.forEach((mvp.ViewModel component){
        // Create Item per component
        ui.TreeItem item = topItem.addTextItem(component.name);
        item.setUserObject(component);
//        item.visible = component.available;
      });
    });
  }
  
  /**
   * Add selection event handlerto tree.
   */
  void addSelectionHandler(event.SelectionHandler<ui.TreeItem> handler) {
    _tree.addSelectionHandler(handler);
  }
}

