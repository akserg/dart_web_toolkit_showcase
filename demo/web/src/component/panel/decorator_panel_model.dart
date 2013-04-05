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

class DecoratorPanelModel extends mvp.ViewModel {
  
  // Component's category name
  String get category => "Panel";
  
  // Return component's name
  String get name => "DecoratorPanel";
  
  // Return component's description
  String get desc => '''
A SimplePanel that wraps its contents in stylized boxes, which can be used to 
add rounded corners to a Widget.

This widget will only work in quirks mode in most cases. Specifically, setting 
the height or width of the DecoratorPanel will result in rendering issues.

Wrapping a Widget in a "9-box" allows users to specify images in each of the 
corners and along the four borders. This method allows the content within the 
DecoratorPanel to resize without disrupting the look of the border. In addition, 
rounded corners can generally be combined into a single image file, which 
reduces the number of downloaded files at startup. This class also simplifies 
the process of using AlphaImageLoaders to support 8-bit transparencies 
(anti-aliasing and shadows) in ie6, which does not support them normally.

Setting the Size:

If you set the width or height of the DecoratorPanel, you need to set the height 
and width of the middleCenter cell to 100% so that the middleCenter cell takes 
up all of the available space. If you do not set the width and height of the 
DecoratorPanel, it will wrap its contents tightly.

.dwt-DecoratorPanel .middleCenter {
  height: 100%;
  width: 100%;
}
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
ui.FlexTable layout = new ui.FlexTable();
layout.setCellSpacing(6);
ui.FlexCellFormatter cellFormatter = layout.getFlexCellFormatter();

// Add a title to the form
layout.setHtml(0, 0, "Enter Search Criteria");
cellFormatter.setColSpan(0, 0, 2);
cellFormatter.setHorizontalAlignment(0, 0, i18n.HasHorizontalAlignment.ALIGN_CENTER);

// Add some standard form options
layout.setHtml(1, 0, "Name:");
layout.setWidget(1, 1, new ui.TextBox());
layout.setHtml(2, 0, "Description:");
layout.setWidget(2, 1, new ui.TextBox());

// Wrap the content in a DecoratorPanel
ui.DecoratorPanel decPanel = new ui.DecoratorPanel();
decPanel.setWidget(layout);

return decPanel;
''';
  }
  
  // Return style snipet for using component
  String get style {
    return "";
  }
  
  /**
   * Return instantiated Component code.
   */
  ui.Widget asWidget() {
    
    ui.FlexTable layout = new ui.FlexTable();
    layout.setCellSpacing(6);
    ui.FlexCellFormatter cellFormatter = layout.getFlexCellFormatter();

    // Add a title to the form
    layout.setHtml(0, 0, "Enter Search Criteria");
    cellFormatter.setColSpan(0, 0, 2);
    cellFormatter.setHorizontalAlignment(0, 0, i18n.HasHorizontalAlignment.ALIGN_CENTER);

    // Add some standard form options
    layout.setHtml(1, 0, "Name:");
    layout.setWidget(1, 1, new ui.TextBox());
    layout.setHtml(2, 0, "Description:");
    layout.setWidget(2, 1, new ui.TextBox());

    // Wrap the content in a DecoratorPanel
    ui.DecoratorPanel decPanel = new ui.DecoratorPanel();
    decPanel.setWidget(layout);

    return decPanel;
  }
}