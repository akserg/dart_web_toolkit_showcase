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

class DockPanelModel implements mvp.ViewModel {
  
  // Component's category name
  String get category => "Panel";
  
  // Return component's name
  String get name => "DockPanel";
  
  // Return component's description
  String get desc => '''
A panel that lays its child widgets out "docked" at its outer edges, and allows 
its last widget to take up the remaining space in its center.

This widget has limitations in standards mode that did not exist in quirks mode. 
The child Widgets contained within a DockPanel cannot be sized using percentages. 
Setting a child widget's height to 100% will NOT cause the child to fill the 
available height.

If you need to work around these limitations, use DockLayoutPanel instead, but 
understand that it is not a drop in replacement for this class. It requires 
standards mode, and is most easily used under a RootLayoutPanel (as opposed to 
a RootPanel).
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
ui.DockPanel dock = new ui.DockPanel();
dock.clearAndSetStyleName("cw-DockPanel");
dock.spacing = 4;
dock.setSize("100%", "100%");
dock.setHorizontalAlignment(i18n.HasHorizontalAlignment.ALIGN_CENTER);

// Add text all around
dock.addWidgetTo(new ui.Html("This is the first north component"), util.DockLayoutConstant.NORTH);
dock.addWidgetTo(new ui.Html("This is the first south component"), util.DockLayoutConstant.SOUTH);
dock.addWidgetTo(new ui.Html("This is the east component"), util.DockLayoutConstant.EAST);
dock.addWidgetTo(new ui.Html("This is the west component"), util.DockLayoutConstant.WEST);
dock.addWidgetTo(new ui.Html("This is the second north component"), util.DockLayoutConstant.NORTH);
dock.addWidgetTo(new ui.Html("This is the second south component"),util.DockLayoutConstant.SOUTH);

// Add scrollable text in the center
ui.Html contents = new ui.Html("This is a ScrollPanel contained at the center of a DockPanel. By putting some fairly large contents in the middle and setting its size explicitly, it becomes a scrollable area within the page, but without requiring the use of an IFRAME./nHere's quite a bit more meaningless text that will serve primarily to make this thing scroll off the bottom of its visible area. Otherwise, you might have to make it really, really small in order to see the nifty scroll bars!");
ui.ScrollPanel scroller = new ui.ScrollPanel(contents);
scroller.setSize("400px", "100px");
dock.addWidgetTo(scroller, util.DockLayoutConstant.CENTER);

// Return the content
return dock;
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
    
    ui.DockPanel dock = new ui.DockPanel();
    dock.clearAndSetStyleName("cw-DockPanel");
    dock.spacing = 4;
    dock.setSize("100%", "100%");
    dock.setHorizontalAlignment(i18n.HasHorizontalAlignment.ALIGN_CENTER);

    // Add text all around
    dock.addWidgetTo(new ui.Html("This is the first north component"), util.DockLayoutConstant.NORTH);
    dock.addWidgetTo(new ui.Html("This is the first south component"), util.DockLayoutConstant.SOUTH);
    dock.addWidgetTo(new ui.Html("This is the east component"), util.DockLayoutConstant.EAST);
    dock.addWidgetTo(new ui.Html("This is the west component"), util.DockLayoutConstant.WEST);
    dock.addWidgetTo(new ui.Html("This is the second north component"), util.DockLayoutConstant.NORTH);
    dock.addWidgetTo(new ui.Html("This is the second south component"),util.DockLayoutConstant.SOUTH);

    // Add scrollable text in the center
    ui.Html contents = new ui.Html("This is a ScrollPanel contained at the center of a DockPanel. By putting some fairly large contents in the middle and setting its size explicitly, it becomes a scrollable area within the page, but without requiring the use of an IFRAME./nHere's quite a bit more meaningless text that will serve primarily to make this thing scroll off the bottom of its visible area. Otherwise, you might have to make it really, really small in order to see the nifty scroll bars!");
    ui.ScrollPanel scroller = new ui.ScrollPanel(contents);
    scroller.setSize("400px", "100px");
    dock.addWidgetTo(scroller, util.DockLayoutConstant.CENTER);

    // Return the content
    return dock;
  }
}