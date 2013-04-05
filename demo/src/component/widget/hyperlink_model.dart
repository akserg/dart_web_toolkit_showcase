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

class HyperlinkModel extends mvp.ViewModel {
  
  // Component's category name
  String get category => "Widget";
  
  // Return component's name
  String get name => "Hyperlink";
  
  // Return component's description
  String get desc => '''
A widget that serves as an "internal" hyperlink. That is, it is a link to another state of the running application. When clicked, it will create a new history frame using History.newItem(java.lang.String), but without reloading the page.

If you want an HTML hyperlink (<a> tag) without interacting with the history system, use Anchor instead.

Being a true hyperlink, it is also possible for the user to "right-click, open link in new window", which will cause the application to be loaded in a new window at the state specified by the hyperlink.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
ui.Label lbl = new ui.Label();

// Create three hyperlinks that change the application's history.
ui.Hyperlink link0 = new ui.Hyperlink("link to foo", false, "foo");
ui.Hyperlink link1 = new ui.Hyperlink("link to bar", false, "bar");
ui.Hyperlink link2 = new ui.Hyperlink("link to baz", false, "baz");

// If the application starts with no history token, redirect to a new
// 'baz' state.
String initToken = ui.History.getToken();
if (initToken.length == 0) {
  ui.History.newItem("baz");
}

// Add widgets to the root panel.
ui.VerticalPanel panel = new ui.VerticalPanel();
panel.add(lbl);
panel.add(link0);
panel.add(link1);
panel.add(link2);

// Add history listener
ui.History.addValueChangeHandler(new event.ValueChangeHandlerAdapter((event.ValueChangeEvent<String> evt){
  // This method is called whenever the application's history changes. Set
  // the label to reflect the current history token.
  lbl.text = "The current history token is: \${evt.value}";
}));

// Now that we've setup our listener, fire the initial history state.
ui.History.fireCurrentHistoryState();

return panel;
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
    
    ui.Label lbl = new ui.Label();
    
    // Create three hyperlinks that change the application's history.
    ui.Hyperlink link0 = new ui.Hyperlink("link to foo", false, "foo");
    ui.Hyperlink link1 = new ui.Hyperlink("link to bar", false, "bar");
    ui.Hyperlink link2 = new ui.Hyperlink("link to baz", false, "baz");

    // If the application starts with no history token, redirect to a new
    // 'baz' state.
    String initToken = ui.History.getToken();
    if (initToken.length == 0) {
      ui.History.newItem("baz");
    }

    // Add widgets to the root panel.
    ui.VerticalPanel panel = new ui.VerticalPanel();
    panel.add(lbl);
    panel.add(link0);
    panel.add(link1);
    panel.add(link2);

    // Add history listener
    ui.History.addValueChangeHandler(new event.ValueChangeHandlerAdapter((event.ValueChangeEvent<String> evt){
      // This method is called whenever the application's history changes. Set
      // the label to reflect the current history token.
      lbl.text = "The current history token is: ${evt.value}";
    }));

    // Now that we've setup our listener, fire the initial history state.
    ui.History.fireCurrentHistoryState();
    
    return panel;
  }
}

