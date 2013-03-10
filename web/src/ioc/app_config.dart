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

part of dart_web_toolkit_ioc;

/**
 * Application level configuration
 */
class AppConfiguration extends lost_dart.InCodeConfiguration {
  AppConfiguration() {
    // Add Application Presenter singleton
    add("AppPresenter", (lost_dart.Container container, Map params){
      return new AppPresenter();
    });
    
    // Add Application View singleton
    add("AppView", (lost_dart.Container container, Map params){
      return new AppView();
    });
    
    // Add Home Page
    add("HomePage", (lost_dart.Container container, Map params){
      return new HomePage();
    });
    
    // Add Component Page
    add("ComponentPage", (lost_dart.Container container, Map params){
      return new ComponentPage();
    });
    
    // Add list of Page
    add("pages", (lost_dart.Container container, Map params){
      return [container.resolve("HomePage"),
              container.resolve("ComponentPage")];
    });
  }
}

