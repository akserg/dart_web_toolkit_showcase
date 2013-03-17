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
 * Component presenter managing all component's view.
 */
class ComponentPresenter implements mvp.Presenter {
  
  ComponentDisplay display;
  List<mvp.ViewModel> models;
  
  void addViewTo(ui.HasWidgets container) {
    assert(container is ui.TabLayoutPanel);
    container.add(display.asWidget(), display.title);
    _refreshView();
  }
  
  void _refreshView() {
    // Register preview as selection event listener comes from tree
    display.componentTree.addSelectionHandler(display.componentPreview);
    // Convert flat to tree view data model
    Map<String, List<mvp.ViewModel>> convertedModels = _convertFlatToTreeModel();
    // Assign tree view data model to tree
    display.componentTree.setData(convertedModels);
  }
  
  /**
   * Convert Flat to tree view data model.
   */
  Map<String, List<mvp.ViewModel>> _convertFlatToTreeModel() {
    Map<String, List<mvp.ViewModel>> treeModels = new Map<String, List<mvp.ViewModel>>();
    for (mvp.ViewModel model in models) {
      if (!treeModels.containsKey(model.category)) {
        treeModels[model.category] = new List<mvp.ViewModel>();
      }
      treeModels[model.category].add(model);
    }
    return treeModels;
  }
}

abstract class ComponentDisplay implements mvp.Display, mvp.View {
  ComponentTreeDisplay componentTree;
  ComponentPreviewDisplay componentPreview;
}

abstract class ComponentTreeDisplay implements mvp.Display {
  void setData(Map<String, List<mvp.ViewModel>> models);
  void addSelectionHandler(ComponentPreviewDisplay preview);
}

abstract class ComponentPreviewDisplay implements mvp.Display, event.SelectionHandler<ui.TreeItem> {
  
}