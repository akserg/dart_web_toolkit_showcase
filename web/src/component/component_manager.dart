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

class ComponentManager {
  
  Map<String, List<ComponentModel>> models;
  
  ComponentManager() {
    models = new Map<String, List<ComponentModel>>();
    // Load models
    load();
    // Parse loaded models
    parse();
  }
  
  /**
   * Load JSON copy of models from backend
   */
  void load() {
    
  }
  
  /**
   * Parse JSON file to fille in the [models].
   */
  void parse() {
    List<ComponentModel> backendResult = new List<ComponentModel>();
    backendResult.add(new ComponentModel(
        category:"Widget",
        name:"Button", 
        desc:"All kind of buttons",
        code:"for (int i = 1; i < 5; i++) {hPanel.add(new ui.Button(\"Button \$i\"));}"));
    
    // Create tree hierarchy
    for (ComponentModel model in backendResult) {
      if (!models.containsKey(model.category)) {
        models[model.category] = new List<ComponentModel>();
      }
      models[model.category].add(model);
    }
  }
}

