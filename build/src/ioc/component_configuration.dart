/*
 * Copyright 2013 Sergey Akopkokhyants.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License); you may not
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
class ComponentConfiguration {
  
  ComponentConfiguration(lost_dart.Container container) {
    
    // Add Component Page
    container.bind(ComponentView)
      .setTypeProperty("componentTree", ComponentTreeView)
      .setTypeProperty("componentPreview", ComponentPreview);
    
    // Add Component Presenter
    container.bind(ComponentPresenter)
      .setTypeProperty("display", ComponentView)
      .setRefProperty("models", "componentModels");
    
    // Add Component Manager
    container.bind(ComponentTreeView);
    
    // Add Component Manager
    container.bind(ComponentPreview);
    
    // Add List of Component Model
    container.bindAs("componentModels").toFactory((){
      return [
        // Widget
        container.get(ButtonModel), 
        container.get(CheckBoxModel),
        container.get(CompositeModel),
        container.get(DateBoxModel),
        container.get(DatePickerModel),
        container.get(DoubleBoxModel),
        container.get(FileUploadModel),
        container.get(HiddenModel),
        container.get(HtmlModel),
        container.get(HyperlinkModel),
        container.get(ImageModel),
        container.get(InlineHtmlModel),
        container.get(InlineHyperlinkModel),
        container.get(InlineLabelModel),
        container.get(IntegerBoxModel),
        container.get(LabelModel),
        container.get(ListBoxModel),
        container.get(MenuBoxModel),
        container.get(NumberLabelModel),
        container.get(PasswordTextBoxModel),
        container.get(PushButtonModel),
        container.get(RadioButtonModel),
        container.get(RichTextAreaModel),
        container.get(SimpleCheckBoxModel),
        container.get(SimpleRadioButtonModel),
        container.get(SuggestBoxModel),
        container.get(TextAreaModel),
        container.get(TextBoxModel),
        container.get(ToggleButtonModel),
        container.get(TreeModel),
        // Popup
        container.get(DialogBoxModel),
        container.get(PopupPanelModel),
        // Panel
        container.get(AbsolutePanelModel),
        container.get(CaptionPanelModel),
        container.get(DeckPanelModel),
        container.get(DecoratedStackPanelModel),
        container.get(DecoratedTabBarModel),
        container.get(DecoratedTabPanelModel),
        container.get(DecoratorPanelModel),
        container.get(DisclosurePanelModel),
        container.get(DockPanelModel),
        container.get(FlexTableModel),
        container.get(FlowPanelModel),
        container.get(FocusPanelModel),
        container.get(FormPanelModel),
        container.get(FrameModel),
        container.get(GridModel),
        container.get(HorizontalPanelModel),
        container.get(HorizontalSplitPanelModel),
        container.get(HtmlPanelModel),
        container.get(NamedFrameModel),
        container.get(ScrolledPanelModel),
        container.get(SimplePanelModel),
        container.get(StackPanelModel),
        container.get(TabBarModel),
        container.get(TabPanelModel),
        container.get(VerticalPanelModel),
        container.get(VerticalSplitPanelModel),
        // Layout
        container.get(DockLayoutPanelModel),
        container.get(LayoutPanelModel),
        container.get(SplitLayoutPanelModel),
        container.get(StackLayoutPanelModel),
        container.get(TabLayoutPanelModel)
      ];
    });
  }
}