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

class TreeModel implements mvp.ViewModel {
  
  // Component's category name
  String get category => "Widget";
  
  // Return component's name
  String get name => "Tree";
  
  // Return component's description
  String get desc => '''
A standard hierarchical tree widget. The tree contains a hierarchy of TreeItems 
that the user can open, close, and select.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
// Create a static tree and a container to hold it
ui.Tree staticTree = _createStaticTree();
staticTree.setAnimationEnabled(true);
ui.ScrollPanel staticTreeWrapper = new ui.ScrollPanel(staticTree);
staticTreeWrapper.setSize("300px", "300px");

// Wrap the static tree in a DecoratorPanel
ui.DecoratorPanel staticDecorator = new ui.DecoratorPanel();
staticDecorator.setWidget(staticTreeWrapper);


// Create a dynamically generated tree and a container to hold it
ui.Tree dynamicTree = _createDynamicTree();
ui.ScrollPanel dynamicTreeWrapper = new ui.ScrollPanel(dynamicTree);
dynamicTreeWrapper.setSize("300px", "300px");

// Wrap the dynamic tree in a DecoratorPanel
ui.DecoratorPanel dynamicDecorator = new ui.DecoratorPanel();
dynamicDecorator.setWidget(dynamicTreeWrapper);


// Combine trees onto the page
ui.Grid grid = new ui.Grid(2, 3);
grid.setCellPadding(2);
grid.getRowFormatter().setVerticalAlign(1, i18n.HasVerticalAlignment.ALIGN_TOP);
grid.setHtml(0, 0, "<b>Static Tree:</b>");
grid.setHtml(0, 1, "   ");
grid.setHtml(0, 2, "<b>Dynamic Tree:</b>");
grid.setWidget(1, 0, staticDecorator);
grid.setHtml(1, 1, "   ");
grid.setWidget(1, 2, dynamicDecorator);

return grid;



/**
 * Create a static tree with some data in it.
 *
 * @return the new tree
 */
ui.Tree _createStaticTree() {
  // Create the tree
  List<String> composers = ["Beethoven", "Brahms", "Mozart"];
  String concertosLabel = "Concertos";
  String quartetsLabel = "Quartets";
  String sonatasLabel = "Sonatas";
  String symphoniesLabel = "Symphonies";
  ui.Tree staticTree = new ui.Tree();

  // Add some of Beethoven's music
  ui.TreeItem beethovenItem = staticTree.addTextItem(composers[0]);
  _addMusicSection(beethovenItem, concertosLabel, ["No. 1 - C", "No. 2 - B-Flat Major", "No. 3 - C Minor", "No. 4 - G Major", "No. 5 - E-Flat Major"]);
  _addMusicSection(beethovenItem, quartetsLabel, ["Six String Quartets", "Three String Quartets", "Grosse Fugue for String Quartets"]);
  _addMusicSection(beethovenItem, sonatasLabel, ["Sonata in A Minor", "Sonata in F Major"]);
  _addMusicSection(beethovenItem, symphoniesLabel, ["No. 2 - D Major", "No. 2 - D Major", "No. 3 - E-Flat Major", "No. 4 - B-Flat Major", "No. 5 - C Minor", "No. 6 - F Major", "No. 7 - A Major", "No. 8 - F Major", "No. 9 - D Minor"]);

  // Add some of Brahms's music
  ui.TreeItem brahmsItem = staticTree.addTextItem(composers[1]);
  _addMusicSection(brahmsItem, concertosLabel, ["Violin Concerto", "Double Concerto - A Minor", "Piano Concerto No. 1 - D Minor", "Piano Concerto No. 2 - B-Flat Major"]);
  _addMusicSection(brahmsItem, quartetsLabel, ["Piano Quartet No. 1 - G Minor", "Piano Quartet No. 2 - A Major", "Piano Quartet No. 3 - C Minor", "String Quartet No. 3 - B-Flat Minor"]);
  _addMusicSection(brahmsItem, sonatasLabel, ["Two Sonatas for Clarinet - F Minor", "Two Sonatas for Clarinet - E-Flat Major"]);
  _addMusicSection(brahmsItem, symphoniesLabel, ["No. 1 - C Minor", "No. 2 - D Minor", "No. 3 - F Major", "No. 4 - E Minor"]);

  // Add some of Mozart's music
  ui.TreeItem mozartItem = staticTree.addTextItem(composers[2]);
  _addMusicSection(mozartItem, concertosLabel, ["Piano Concerto No. 12", "Piano Concerto No. 17", "Clarinet Concerto", "Violin Concerto No. 5", "Violin Concerto No. 4"]);

  // Return the tree
  return staticTree;
}

/**
 * Add a new section of music created by a specific composer.
 *
 * @param parent the parent {@link TreeItem} where the section will be added
 * @param label the label of the new section of music
 * @param composerWorks an array of works created by the composer
 */
void _addMusicSection(ui.TreeItem parent, String label, List<String> composerWorks) {
  ui.TreeItem section = parent.addTextItem(label);
  for (String work in composerWorks) {
    section.addTextItem(work);
  }
}

/**
 * Create a dynamic tree that will add a random number of children to each
 * node as it is clicked.
 *
 * @return the new tree
 */
ui.Tree _createDynamicTree() {
  // Create a new tree
  ui.Tree dynamicTree = new ui.Tree();

  // Add some default tree items
  for (int i = 0; i < 5; i++) {
    ui.TreeItem item = dynamicTree.addTextItem("Item \$i");

    // Temporarily add an item so we can expand this node
    item.addTextItem("");
  }

  dart_math.Random random = new dart_math.Random(5);

  // Add a handler that automatically generates some children
  dynamicTree.addOpenHandler(new event.OpenHandlerAdapter((event.OpenEvent evt) {
    ui.TreeItem item = evt.getTarget();
    if (item.getChildCount() == 1) {
      // Close the item immediately
      item.setState(false, false);

      // Add a random number of children to the item
      String itemText = item.text;
      int numChildren = random.nextInt(5) + 2;
      for (int i = 0; i < numChildren; i++) {
        ui.TreeItem child = item.addTextItem(itemText.concat(".").concat(i.toString()));
        child.addTextItem("");
      }

      // Remove the temporary item when we finish loading
      item.getChild(0).remove();

      // Reopen the item
      item.setState(true, false);
    }
  }));

  // Return the tree
  return dynamicTree;
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
    
    // Create a static tree and a container to hold it
    ui.Tree staticTree = _createStaticTree();
    staticTree.setAnimationEnabled(true);
    ui.ScrollPanel staticTreeWrapper = new ui.ScrollPanel(staticTree);
    staticTreeWrapper.setSize("300px", "300px");

    // Wrap the static tree in a DecoratorPanel
    ui.DecoratorPanel staticDecorator = new ui.DecoratorPanel();
    staticDecorator.setWidget(staticTreeWrapper);


    // Create a dynamically generated tree and a container to hold it
    ui.Tree dynamicTree = _createDynamicTree();
    ui.ScrollPanel dynamicTreeWrapper = new ui.ScrollPanel(dynamicTree);
    dynamicTreeWrapper.setSize("300px", "300px");

    // Wrap the dynamic tree in a DecoratorPanel
    ui.DecoratorPanel dynamicDecorator = new ui.DecoratorPanel();
    dynamicDecorator.setWidget(dynamicTreeWrapper);


    // Combine trees onto the page
    ui.Grid grid = new ui.Grid(2, 3);
    grid.setCellPadding(2);
    grid.getRowFormatter().setVerticalAlign(1, i18n.HasVerticalAlignment.ALIGN_TOP);
    grid.setHtml(0, 0, "<b>Static Tree:</b>");
    grid.setHtml(0, 1, "   ");
    grid.setHtml(0, 2, "<b>Dynamic Tree:</b>");
    grid.setWidget(1, 0, staticDecorator);
    grid.setHtml(1, 1, "   ");
    grid.setWidget(1, 2, dynamicDecorator);

    return grid;
  }
}

/**
 * Create a static tree with some data in it.
 *
 * @return the new tree
 */
ui.Tree _createStaticTree() {
  // Create the tree
  List<String> composers = ["Beethoven", "Brahms", "Mozart"];
  String concertosLabel = "Concertos";
  String quartetsLabel = "Quartets";
  String sonatasLabel = "Sonatas";
  String symphoniesLabel = "Symphonies";
  ui.Tree staticTree = new ui.Tree();

  // Add some of Beethoven's music
  ui.TreeItem beethovenItem = staticTree.addTextItem(composers[0]);
  _addMusicSection(beethovenItem, concertosLabel, ["No. 1 - C", "No. 2 - B-Flat Major", "No. 3 - C Minor", "No. 4 - G Major", "No. 5 - E-Flat Major"]);
  _addMusicSection(beethovenItem, quartetsLabel, ["Six String Quartets", "Three String Quartets", "Grosse Fugue for String Quartets"]);
  _addMusicSection(beethovenItem, sonatasLabel, ["Sonata in A Minor", "Sonata in F Major"]);
  _addMusicSection(beethovenItem, symphoniesLabel, ["No. 2 - D Major", "No. 2 - D Major", "No. 3 - E-Flat Major", "No. 4 - B-Flat Major", "No. 5 - C Minor", "No. 6 - F Major", "No. 7 - A Major", "No. 8 - F Major", "No. 9 - D Minor"]);

  // Add some of Brahms's music
  ui.TreeItem brahmsItem = staticTree.addTextItem(composers[1]);
  _addMusicSection(brahmsItem, concertosLabel, ["Violin Concerto", "Double Concerto - A Minor", "Piano Concerto No. 1 - D Minor", "Piano Concerto No. 2 - B-Flat Major"]);
  _addMusicSection(brahmsItem, quartetsLabel, ["Piano Quartet No. 1 - G Minor", "Piano Quartet No. 2 - A Major", "Piano Quartet No. 3 - C Minor", "String Quartet No. 3 - B-Flat Minor"]);
  _addMusicSection(brahmsItem, sonatasLabel, ["Two Sonatas for Clarinet - F Minor", "Two Sonatas for Clarinet - E-Flat Major"]);
  _addMusicSection(brahmsItem, symphoniesLabel, ["No. 1 - C Minor", "No. 2 - D Minor", "No. 3 - F Major", "No. 4 - E Minor"]);

  // Add some of Mozart's music
  ui.TreeItem mozartItem = staticTree.addTextItem(composers[2]);
  _addMusicSection(mozartItem, concertosLabel, ["Piano Concerto No. 12", "Piano Concerto No. 17", "Clarinet Concerto", "Violin Concerto No. 5", "Violin Concerto No. 4"]);

  // Return the tree
  return staticTree;
}

/**
 * Add a new section of music created by a specific composer.
*
 * @param parent the parent {@link TreeItem} where the section will be added
 * @param label the label of the new section of music
 * @param composerWorks an array of works created by the composer
 */
void _addMusicSection(ui.TreeItem parent, String label, List<String> composerWorks) {
  ui.TreeItem section = parent.addTextItem(label);
  for (String work in composerWorks) {
    section.addTextItem(work);
  }
}

/**
 * Create a dynamic tree that will add a random number of children to each
 * node as it is clicked.
*
 * @return the new tree
 */
ui.Tree _createDynamicTree() {
  // Create a new tree
  ui.Tree dynamicTree = new ui.Tree();

  // Add some default tree items
  for (int i = 0; i < 5; i++) {
    ui.TreeItem item = dynamicTree.addTextItem("Item $i");

    // Temporarily add an item so we can expand this node
    item.addTextItem("");
  }

  dart_math.Random random = new dart_math.Random(5);

  // Add a handler that automatically generates some children
  dynamicTree.addOpenHandler(new event.OpenHandlerAdapter((event.OpenEvent evt) {
    ui.TreeItem item = evt.getTarget();
    if (item.getChildCount() == 1) {
      // Close the item immediately
      item.setState(false, false);

      // Add a random number of children to the item
      String itemText = item.text;
      int numChildren = random.nextInt(5) + 2;
      for (int i = 0; i < numChildren; i++) {
        ui.TreeItem child = item.addTextItem(itemText.concat(".").concat(i.toString()));
        child.addTextItem("");
      }

      // Remove the temporary item when we finish loading
      item.getChild(0).remove();

      // Reopen the item
      item.setState(true, false);
    }
  }));

  // Return the tree
  return dynamicTree;
}