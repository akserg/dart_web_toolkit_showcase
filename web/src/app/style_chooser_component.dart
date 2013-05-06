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

/**
 * Component helps choose style from dropdown list and apply it.
 */
class StyleChooserComponent extends ui.Composite {
  
  static const String CLEAN = "clean";
  static const String CHROME = "chrome";
  static const String DARK = "dark";
  static const String STANDARD = "standard";
  
  final List<String> styles = [CLEAN, CHROME, DARK, STANDARD];
  
  StyleChooserComponent(String label, [String defaultStyle = CLEAN]) {
    ui.HorizontalPanel widget = new ui.HorizontalPanel();
    initWidget(widget);
    widget.setVerticalAlignment(i18n.HasVerticalAlignment.ALIGN_MIDDLE);
    
    ui.Label headerText = new ui.Label(label);
    headerText.addStyleName("style-chooser");
    widget.add(headerText);

    int selected = 0;
    // Add Style chooser
    ui.ListBox styleChooser = new ui.ListBox();
    for (int i = 0; i < styles.length; i++) {
      String style = styles[i];
      styleChooser.addItem(style, core.DWT.getModuleBaseURL() + "resource/${style}/${style}.css");
      if (defaultStyle == style) {
        selected = i;
      }
    };
    styleChooser.addChangeHandler(new event.ChangeHandlerAdapter((event.ChangeEvent evt){
      // Take selecting value 
      int index = styleChooser.getSelectedIndex();
      String item = styleChooser.getItemText(index);
      String value = styleChooser.getValue(index);
      // Then find 'wt-stylesheet'
      dart_html.LinkElement link = dart_html.query("#dwt-stylesheet");
      if (link != null) {
        // and apply it
        link.href = value;
      }
    }));
    widget.add(styleChooser);
    styleChooser.setSelectedIndex(selected);
  }
}