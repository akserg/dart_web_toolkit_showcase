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

class TabPanelModel extends mvp.ViewModel {
  
  // Component's category name
  String get category => "Panel (quirks)";
  
  // Return component's name
  String get name => "TabPanel";
  
  // Return component's description
  String get desc => '''
A panel that represents a tabbed set of pages, each of which contains another 
widget. Its child widgets are shown as the user selects the various tabs 
associated with them. The tabs can contain arbitrary HTML.

This widget will only work in quirks mode. If your application is in Standards 
Mode, use TabLayoutPanel instead.
''';
  
  // Return code snipet how to use component
  String get code {
    return '''
String text1 = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Ut sit amet pede eu nulla volutpat tempor. Vestibulum porttitor. Nulla ut augue. Morbi sollicitudin elit sit amet lectus. Nullam convallis condimentum dolor. Ut viverra. Suspendisse aliquet dui ullamcorper tellus. Vestibulum eros. Praesent nec justo vitae erat imperdiet gravida. Suspendisse non ante vitae leo eleifend auctor. In lacus nulla, posuere sit amet, fringilla ut, scelerisque et, risus. Nulla ornare, lorem tempor dictum aliquam, pede justo lacinia felis, vel mattis dui lorem quis eros.";
String text2 = "Sed egestas, arcu nec accumsan placerat, libero augue imperdiet pede, quis pretium nisi est et sapien. Maecenas eu augue a lectus dictum gravida. Nam quis enim at nibh viverra tempus. Integer feugiat eros vitae purus. Integer varius. Nam ligula ipsum, tempus ut, rutrum non, malesuada ac, lorem. Donec nisl. Maecenas quis ante. Praesent vel lectus vitae velit bibendum sollicitudin. Donec posuere. Fusce fermentum congue tortor. Sed facilisis, leo in fringilla suscipit, justo eros mattis nisi, sit amet sollicitudin libero nisl sit amet augue. In ultrices imperdiet ipsum. Quisque varius est id pede. Sed felis sem, aliquet vel, suscipit sit amet, lobortis ac, nisl. Proin auctor imperdiet nisl. Sed quis enim. Cras mollis. Morbi nunc justo, feugiat a, bibendum sit amet, egestas sed, lectus.";
String text3 = "Proin tristique, elit at blandit vestibulum, odio eros ultrices urna, eget accumsan sapien lorem vitae lacus. Cras elit nisi, lacinia ac, sagittis sed, convallis eu, enim. Donec felis magna, ullamcorper tristique, placerat volutpat, sollicitudin et, elit. Donec tempus nulla ac erat. Suspendisse potenti. Curabitur bibendum, est in congue placerat, nisi enim tempor nunc, sit amet bibendum neque tellus in eros. Ut laoreet libero. Phasellus vel risus vitae elit faucibus tristique. Nulla eu pede. Cras eleifend. Nulla facilisi. Integer lobortis. Donec magna. Quisque ut mauris. Duis at magna et metus pharetra hendrerit. Nullam augue. Aliquam nunc. Cras non enim. Quisque ac est ut pede sodales pulvinar. Quisque augue.";

ui.TabPanel panel = new ui.TabPanel();
ui.FlowPanel flowpanel;

flowpanel = new ui.FlowPanel();
flowpanel.add(new ui.Label(text1));
panel.addTabText(flowpanel, "One");

flowpanel = new ui.FlowPanel();
flowpanel.add(new ui.Label(text2));
panel.addTabText(flowpanel, "Two");

flowpanel = new ui.FlowPanel();
flowpanel.add(new ui.Label(text3));
panel.addTabText(flowpanel, "Three");

panel.selectTab(0);

panel.setSize("500px", "250px");
panel.setAnimationEnabled(true);

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
    
    String text1 = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Ut sit amet pede eu nulla volutpat tempor. Vestibulum porttitor. Nulla ut augue. Morbi sollicitudin elit sit amet lectus. Nullam convallis condimentum dolor. Ut viverra. Suspendisse aliquet dui ullamcorper tellus. Vestibulum eros. Praesent nec justo vitae erat imperdiet gravida. Suspendisse non ante vitae leo eleifend auctor. In lacus nulla, posuere sit amet, fringilla ut, scelerisque et, risus. Nulla ornare, lorem tempor dictum aliquam, pede justo lacinia felis, vel mattis dui lorem quis eros.";
    String text2 = "Sed egestas, arcu nec accumsan placerat, libero augue imperdiet pede, quis pretium nisi est et sapien. Maecenas eu augue a lectus dictum gravida. Nam quis enim at nibh viverra tempus. Integer feugiat eros vitae purus. Integer varius. Nam ligula ipsum, tempus ut, rutrum non, malesuada ac, lorem. Donec nisl. Maecenas quis ante. Praesent vel lectus vitae velit bibendum sollicitudin. Donec posuere. Fusce fermentum congue tortor. Sed facilisis, leo in fringilla suscipit, justo eros mattis nisi, sit amet sollicitudin libero nisl sit amet augue. In ultrices imperdiet ipsum. Quisque varius est id pede. Sed felis sem, aliquet vel, suscipit sit amet, lobortis ac, nisl. Proin auctor imperdiet nisl. Sed quis enim. Cras mollis. Morbi nunc justo, feugiat a, bibendum sit amet, egestas sed, lectus.";
    String text3 = "Proin tristique, elit at blandit vestibulum, odio eros ultrices urna, eget accumsan sapien lorem vitae lacus. Cras elit nisi, lacinia ac, sagittis sed, convallis eu, enim. Donec felis magna, ullamcorper tristique, placerat volutpat, sollicitudin et, elit. Donec tempus nulla ac erat. Suspendisse potenti. Curabitur bibendum, est in congue placerat, nisi enim tempor nunc, sit amet bibendum neque tellus in eros. Ut laoreet libero. Phasellus vel risus vitae elit faucibus tristique. Nulla eu pede. Cras eleifend. Nulla facilisi. Integer lobortis. Donec magna. Quisque ut mauris. Duis at magna et metus pharetra hendrerit. Nullam augue. Aliquam nunc. Cras non enim. Quisque ac est ut pede sodales pulvinar. Quisque augue.";

    ui.TabPanel panel = new ui.TabPanel();
    ui.FlowPanel flowpanel;

    flowpanel = new ui.FlowPanel();
    flowpanel.add(new ui.Label(text1));
    panel.addTabText(flowpanel, "One");

    flowpanel = new ui.FlowPanel();
    flowpanel.add(new ui.Label(text2));
    panel.addTabText(flowpanel, "Two");

    flowpanel = new ui.FlowPanel();
    flowpanel.add(new ui.Label(text3));
    panel.addTabText(flowpanel, "Three");

    panel.selectTab(0);

    panel.setSize("500px", "250px");
    panel.setAnimationEnabled(true);

    return panel;
  }
}