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
 * Home configuration.
 */
class HomeConfiguration {
  
  HomeConfiguration(lost_dart.Container container) {
    
    // Add Home Page
    container.bind(HomeView);
    
    // Add Home Presenter
    container.bind(HomePresenter)
      .setTypeProperty("display", HomeView);
  }
}


