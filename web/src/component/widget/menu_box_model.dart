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

class MenuBoxModel implements mvp.ViewModel {
  
  // Component's category name
  String get category => "Widget";
  
  // Return component's name
  String get name => "MenuBar";
  
  // Return component's description
  String get desc => '''
A standard menu bar widget. A menu bar can contain any number of menu items,
each of which can either fire a {@link scheduler.ScheduledCommand} or open a cascaded menu bar.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
// Create a command that will execute on menu item selection
_MenuCommand menuCommand = new _MenuCommand();

// Create a menu bar
ui.MenuBar menu = new ui.MenuBar();
menu.setAutoOpen(true);
menu.setWidth("500px");
menu.setAnimationEnabled(true);

// Create a sub menu of recent documents
ui.MenuBar recentDocsMenu = new ui.MenuBar(true);
List<String> recentDocs = ["Fishing in the desert.txt", "How to tame a wild parrot", "Idiots Guide to Emu Farms"];
for (int i = 0; i < recentDocs.length; i++) {
  recentDocsMenu.addTextItem(recentDocs[i], false, cmd:menuCommand);
}

// Create the file menu
ui.MenuBar fileMenu = new ui.MenuBar(true);
fileMenu.setAnimationEnabled(true);
menu.addItem(new ui.MenuItem("File", false, subMenu:fileMenu));
List<String> fileOptions = ["New", "Open", "Close", "Recent", "Exit"];
for (int i = 0; i < fileOptions.length; i++) {
  if (i == 3) {
    fileMenu.addSeparator();
    fileMenu.addTextItem(fileOptions[i], false, popup:recentDocsMenu);
    fileMenu.addSeparator();
  } else {
    fileMenu.addTextItem(fileOptions[i], false, cmd:menuCommand);
  }
}

// Create the edit menu
ui.MenuBar editMenu = new ui.MenuBar(true);
menu.addItem(new ui.MenuItem("Edit", false, subMenu:editMenu));
List<String> editOptions = ["Undo", "Redo", "Cut", "Copy", "Paste"];
for (int i = 0; i < editOptions.length; i++) {
  editMenu.addTextItem(editOptions[i], false, cmd:menuCommand);
}

// Create the DWT menu
ui.MenuBar dwtMenu = new ui.MenuBar(true);
menu.addItem(new ui.MenuItem("DWT", true, subMenu:dwtMenu));
List<String> dwtOptions = ["Download", "Examples", "Source Code", "DWT wit' the program"];
for (int i = 0; i < dwtOptions.length; i++) {
  dwtMenu.addTextItem(dwtOptions[i], false, cmd:menuCommand);
}

// Create the help menu
ui.MenuBar helpMenu = new ui.MenuBar(true);
menu.addSeparator();
menu.addItem(new ui.MenuItem("Help", true, subMenu:helpMenu));
List<String> helpOptions = ["Contents", "Fortune Cookie", "About DWT"];
for (int i = 0; i < helpOptions.length; i++) {
  helpMenu.addTextItem(helpOptions[i], false, cmd:menuCommand);
}

return menu;


class _MenuCommand implements scheduler.ScheduledCommand {
  int _curPhrase = 0;
  final List<String> phrases = ["Thank you for selecting a menu item", "A fine selection indeed", "Don't you have anything better to do than select menu items?", "Try something else", "this is just a menu!, Another wasted click"];

  void execute() {
    dart_html.window.alert(phrases[_curPhrase]);
    _curPhrase = (_curPhrase + 1) % phrases.length;
  }
}
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
    
    // Create a command that will execute on menu item selection
    _MenuCommand menuCommand = new _MenuCommand();

    // Create a menu bar
    ui.MenuBar menu = new ui.MenuBar();
    menu.setAutoOpen(true);
    menu.setWidth("500px");
    menu.setAnimationEnabled(true);

    // Create a sub menu of recent documents
    ui.MenuBar recentDocsMenu = new ui.MenuBar(true);
    List<String> recentDocs = ["Fishing in the desert.txt", "How to tame a wild parrot", "Idiots Guide to Emu Farms"];
    for (int i = 0; i < recentDocs.length; i++) {
      recentDocsMenu.addTextItem(recentDocs[i], false, cmd:menuCommand);
    }

    // Create the file menu
    ui.MenuBar fileMenu = new ui.MenuBar(true);
    fileMenu.setAnimationEnabled(true);
    menu.addItem(new ui.MenuItem("File", false, subMenu:fileMenu));
    List<String> fileOptions = ["New", "Open", "Close", "Recent", "Exit"];
    for (int i = 0; i < fileOptions.length; i++) {
      if (i == 3) {
        fileMenu.addSeparator();
        fileMenu.addTextItem(fileOptions[i], false, popup:recentDocsMenu);
        fileMenu.addSeparator();
      } else {
        fileMenu.addTextItem(fileOptions[i], false, cmd:menuCommand);
      }
    }

    // Create the edit menu
    ui.MenuBar editMenu = new ui.MenuBar(true);
    menu.addItem(new ui.MenuItem("Edit", false, subMenu:editMenu));
    List<String> editOptions = ["Undo", "Redo", "Cut", "Copy", "Paste"];
    for (int i = 0; i < editOptions.length; i++) {
      editMenu.addTextItem(editOptions[i], false, cmd:menuCommand);
    }

    // Create the DWT menu
    ui.MenuBar dwtMenu = new ui.MenuBar(true);
    menu.addItem(new ui.MenuItem("DWT", true, subMenu:dwtMenu));
    List<String> dwtOptions = ["Download", "Examples", "Source Code", "DWT wit' the program"];
    for (int i = 0; i < dwtOptions.length; i++) {
      dwtMenu.addTextItem(dwtOptions[i], false, cmd:menuCommand);
    }

    // Create the help menu
    ui.MenuBar helpMenu = new ui.MenuBar(true);
    menu.addSeparator();
    menu.addItem(new ui.MenuItem("Help", true, subMenu:helpMenu));
    List<String> helpOptions = ["Contents", "Fortune Cookie", "About DWT"];
    for (int i = 0; i < helpOptions.length; i++) {
      helpMenu.addTextItem(helpOptions[i], false, cmd:menuCommand);
    }

    return menu;
  }
}

class _MenuCommand implements scheduler.ScheduledCommand {
  int _curPhrase = 0;
  final List<String> phrases = ["Thank you for selecting a menu item", "A fine selection indeed", "Don't you have anything better to do than select menu items?", "Try something else", "this is just a menu!, Another wasted click"];

  void execute() {
    dart_html.window.alert(phrases[_curPhrase]);
    _curPhrase = (_curPhrase + 1) % phrases.length;
  }
}
