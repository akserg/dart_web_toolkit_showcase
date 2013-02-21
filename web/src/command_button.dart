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

/**
 * Button keeps command item inside data attribute.
 */
class CommandButton extends ui.Button {

  /**
   * This constructor may be used by subclasses to explicitly use an existing
   * element. This element must be a &lt;button&gt; element.
   *
   * @param element the element to be used
   */
  CommandButton.fromElement(dart_html.Element element, String data) : super.fromElement(element) {
    getElement().dataAttributes["data"] = data;
    addStyleDependentName("navigation");
  }

  /**
   * Creates a button with the given HTML caption and click listener.
   *
   * @param html the HTML caption
   * @param handler the click handler
   */
  CommandButton(String html, String data, [event.ClickHandler handler = null]) : super(html, handler) {
    getElement().dataAttributes["data"] = data;
    addStyleDependentName("navigation");
  }
}
