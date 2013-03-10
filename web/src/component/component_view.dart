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


class ComponentPreview implements event.SelectionHandler<ui.TreeItem> {

  ui.DockLayoutPanel _panel;
  ui.Html _emptyPanel;
  ui.SplitLayoutPanel _verticalPanel;
  
  ui.Label _nameLabel;
  ui.Label _descriptionLabel;
  ui.Panel _previewPanel;
  ui.Panel _codePanel;
  ui.Panel _stylePanel;
  
  ComponentPreview() {
    
    _panel = new ui.DockLayoutPanel(util.Unit.PX);
    
    _emptyPanel = new ui.Html("Select component from tree category");
    _emptyPanel.addStyleName("emptyPreviewPanel");
    _panel.add(_emptyPanel);
    
    _verticalPanel = new ui.SplitLayoutPanel();
    
    // Add Horizontal split panel
    ui.SplitLayoutPanel horizontalPanel = new ui.SplitLayoutPanel();
    _verticalPanel.addSouth(horizontalPanel, 300.0);
    
    // Add style panel to bottom left corner
    ui.DockLayoutPanel styles = new ui.DockLayoutPanel(util.Unit.PX);
    horizontalPanel.addEast(styles, 300.0);
    //
    ui.Label styleLabel = new ui.Label("Style:");
    styleLabel.addStyleName("sourceCodeLabel");
    styles.addNorth(styleLabel, 24.0);
    _stylePanel = new ui.SimplePanel();
    styles.add(_stylePanel);
    
    // Add code panel to bottom right corner
    ui.DockLayoutPanel codes = new ui.DockLayoutPanel(util.Unit.PX);
    horizontalPanel.add(codes);
    //
    ui.Label sourceCodeLabel = new ui.Label("Source Code:");
    sourceCodeLabel.addStyleName("sourceCodeLabel");
    codes.addNorth(sourceCodeLabel, 24.0);
    _codePanel = new ui.SimplePanel();
    codes.add(_codePanel);
    
    // Add info panel to center
    ui.DockLayoutPanel infoPanel = new ui.DockLayoutPanel(util.Unit.PX);
    _verticalPanel.add(infoPanel);
    
    // Add name to top of info panel
    _nameLabel = new ui.Label();
    _nameLabel.addStyleName("titlePreviewPanel");
    infoPanel.addNorth(_nameLabel, 25.0);
    
    // Add description above the name
    _descriptionLabel = new ui.Label();
    _descriptionLabel.addStyleName("descPreviewPanel");
    infoPanel.addNorth(new ui.ScrollPanel(_descriptionLabel), 75.0);
    
    // Add preview panel to center of info panel
    _previewPanel = new ui.SimplePanel();
    _previewPanel.addStyleName("previewPreviewPanel");
    infoPanel.add(_previewPanel);
  }
  
  ui.Widget asWidget() {
    return _panel;
  }
  
  /**
   * Called when {@link SelectionEvent} is fired.
   *
   * @param event the {@link SelectionEvent} that was fired
   */
  void onSelection(event.SelectionEvent<ui.TreeItem> evt) {
    // Clear panels and forms
    _panel.clear();
    _nameLabel.text = "";
    _descriptionLabel.text = "";
    _previewPanel.clear();
    _codePanel.clear();
    _stylePanel.clear();
    // Check selected item
    ui.TreeItem item = evt.getSelectedItem();
    if (item.getUserObject() != null && item.getUserObject() is ComponentModel) {
      ComponentModel model = item.getUserObject() as ComponentModel;
      // Show model in View panel
      _nameLabel.text = "${model.category} : ${model.name}";
      _descriptionLabel.text = model.desc;
      _previewPanel.add(model.asWidget());
      _codePanel.add(_prepareToView(model.code));
      _stylePanel.add(_prepareToView(model.style));
      // Add verticalPanel to panel 
      _panel.add(_verticalPanel);
    } else {
      // Add emptyPanel to panel 
      _panel.add(_emptyPanel);
    }
  }
  
  /**
   * Prepare code and style to butify through external JS code.
   * For now we are using Highlight.js to manage <pre><code> content.
   * See http://softwaremaniacs.org/soft/highlight. 
   */
  ui.ScrollPanel _prepareToView(String code) {
    StringBuffer sb = new StringBuffer();
    sb.write("<pre><code>");
    sb.write(util.SafeHtmlUtils.fromString(code).asString());
    sb.write("</code></pre>");
    //
    ui.Html html = new ui.Html(sb.toString());
    html.setSize("100%", "100%");
    ui.ScrollPanel scrollPanel = new ui.ScrollPanel(html);
    scrollPanel.setSize("100%", "100%");
    return scrollPanel;
  }
}
