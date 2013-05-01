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
 * Components configuration.
 */
class WidgetComponentConfiguration extends lost_dart.InCodeConfiguration {
  
  WidgetComponentConfiguration() {
    
    add("ButtonModel", (lost_dart.Container container, Map params){
      return new ButtonModel();
    });
    
    add("CheckBoxModel", (lost_dart.Container container, Map params){
      return new CheckBoxModel();
    });
    
    add("CompositeModel", (lost_dart.Container container, Map params){
      return new CompositeModel();
    });
    
    add("DateBoxModel", (lost_dart.Container container, Map params){
      return new DateBoxModel();
    });
    
    add("DatePickerModel", (lost_dart.Container container, Map params){
      return new DatePickerModel();
    });
       
    add("DoubleBoxModel", (lost_dart.Container container, Map params){
      return new DoubleBoxModel();
    });
    
    add("FileUploadModel", (lost_dart.Container container, Map params){
      return new FileUploadModel();
    });
    
    add("HiddenModel", (lost_dart.Container container, Map params){
      return new HiddenModel();
    });
    
    add("HtmlModel", (lost_dart.Container container, Map params){
      return new HtmlModel();
    });
    
    add("HyperlinkModel", (lost_dart.Container container, Map params){
      return new HyperlinkModel();
    });
    
    add("ImageModel", (lost_dart.Container container, Map params){
      return new ImageModel();
    });
    
    add("InlineHtmlModel", (lost_dart.Container container, Map params){
      return new InlineHtmlModel();
    });
    
    add("InlineHyperlinkModel", (lost_dart.Container container, Map params){
      return new InlineHyperlinkModel();
    });
    
    add("InlineLabelModel", (lost_dart.Container container, Map params){
      return new InlineLabelModel();
    });
    
    add("IntegerBoxModel", (lost_dart.Container container, Map params){
      return new IntegerBoxModel();
    });
    
    add("LabelModel", (lost_dart.Container container, Map params){
      return new LabelModel();
    });
    
    add("ListBoxModel", (lost_dart.Container container, Map params){
      return new ListBoxModel();
    });
    
    add("MenuBoxModel", (lost_dart.Container container, Map params){
      return new MenuBoxModel();
    });
    
    add("NumberLabelModel", (lost_dart.Container container, Map params){
      return new NumberLabelModel();
    });
    
    add("PasswordTextBoxModel", (lost_dart.Container container, Map params){
      return new PasswordTextBoxModel();
    });
    
    add("PushButtonModel", (lost_dart.Container container, Map params){
      return new PushButtonModel();
    });
    
    add("RadioButtonModel", (lost_dart.Container container, Map params){
      return new RadioButtonModel();
    });
    
    add("RichTextAreaModel", (lost_dart.Container container, Map params){
      return new RichTextAreaModel();
    });
    
    add("SimpleCheckBoxModel", (lost_dart.Container container, Map params){
      return new SimpleCheckBoxModel();
    });
    
    add("SimpleRadioButtonModel", (lost_dart.Container container, Map params){
      return new SimpleRadioButtonModel();
    });
    
    add("SuggestBoxModel", (lost_dart.Container container, Map params){
      return new SuggestBoxModel();
    });
    
    add("TextAreaModel", (lost_dart.Container container, Map params){
      return new TextAreaModel();
    });
    
    add("TextBoxModel", (lost_dart.Container container, Map params){
      return new TextBoxModel();
    });
    
    add("ToggleButtonModel", (lost_dart.Container container, Map params){
      return new ToggleButtonModel();
    });
    
    add("TreeModel", (lost_dart.Container container, Map params){
      return new TreeModel();
    });
  }
}