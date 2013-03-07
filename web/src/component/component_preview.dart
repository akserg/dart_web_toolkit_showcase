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

part of dart_web_toolkit_showcase;


class ComponentPreview implements event.SelectionHandler<ui.TreeItem> {

  ui.SplitLayoutPanel _verticalPanel;
  
  ui.Label _nameLabel;
  ui.Label _descriptionLabel;
  ui.Panel _previewPanel;
  ui.Panel _codePanel;
  ui.Panel _stylePanel;
  
  ComponentPreview() {
    _verticalPanel = new ui.SplitLayoutPanel();
    _verticalPanel.setSize("100%", "100%");
    
    // Add Horizontal split panel
    ui.SplitLayoutPanel horizontalPanel = new ui.SplitLayoutPanel();
    horizontalPanel.setSize("100%", "100%");
    _verticalPanel.addSouth(horizontalPanel, 300.0);
    
    // Add style panel to bottom left corner
    _stylePanel = new ui.SimplePanel();
    horizontalPanel.addEast(_stylePanel, 300.0);
    
    _stylePanel.add(new ui.Html("{Style}"));
    
    // Add code panel to botto right corner
    _codePanel = new ui.SimplePanel();
    horizontalPanel.add(_codePanel);
    
    _codePanel.add(new ui.Html("{Code}"));
    
    // Add info panel to center
    ui.DockLayoutPanel infoPanel = new ui.DockLayoutPanel(util.Unit.PX);
    infoPanel.setSize("100%", "100%");
    _verticalPanel.add(infoPanel);
    
    // Add name to top of info panel
    _nameLabel = new ui.Label("{Name}");
    infoPanel.addNorth(_nameLabel, 25.0);
    
    // Add description above the name
    _descriptionLabel = new ui.Label("{Description}");
    infoPanel.addNorth(_descriptionLabel, 75.0);
    
    // Add preview panel to ccenter of info panel
    _previewPanel = new ui.SimplePanel();
    infoPanel.add(_previewPanel);
    
    _previewPanel.add(new ui.Html("{Widget Preview}"));
  }
  
  ui.Widget asWidget() {
    return _verticalPanel;
  }
  
  /**
   * Called when {@link SelectionEvent} is fired.
   *
   * @param event the {@link SelectionEvent} that was fired
   */
  void onSelection(event.SelectionEvent<ui.TreeItem> evt) {
    ui.TreeItem item = evt.getSelectedItem();
    if (item.getUserObject() != null && item.getUserObject() is ComponentModel) {
      ComponentModel model = item.getUserObject() as ComponentModel;
      // Show model in View panel
      _nameLabel.text = model.name != null ? model.name : "";
      _descriptionLabel.text = model.desc != null ? model.desc : "";
      _previewPanel.clear();
      _previewPanel.add(new ui.Html(model.code != null ? model.code : ""));
      _codePanel.clear();
      _codePanel.add(new ui.Html(model.code != null ? model.code : ""));
      _stylePanel.clear();
      _stylePanel.add(new ui.Html(model.style != null ? model.style : ""));
    }
  }
}
