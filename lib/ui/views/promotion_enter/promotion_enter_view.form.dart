// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String PromotionValueKey = 'promotion';

final Map<String, TextEditingController>
    _PromotionEnterViewTextEditingControllers = {};

final Map<String, FocusNode> _PromotionEnterViewFocusNodes = {};

final Map<String, String? Function(String?)?>
    _PromotionEnterViewTextValidations = {
  PromotionValueKey: null,
};

mixin $PromotionEnterView {
  TextEditingController get promotionController =>
      _getFormTextEditingController(PromotionValueKey);

  FocusNode get promotionFocusNode => _getFormFocusNode(PromotionValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_PromotionEnterViewTextEditingControllers.containsKey(key)) {
      return _PromotionEnterViewTextEditingControllers[key]!;
    }

    _PromotionEnterViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _PromotionEnterViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_PromotionEnterViewFocusNodes.containsKey(key)) {
      return _PromotionEnterViewFocusNodes[key]!;
    }
    _PromotionEnterViewFocusNodes[key] = FocusNode();
    return _PromotionEnterViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    promotionController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    promotionController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          PromotionValueKey: promotionController.text,
        }),
    );

    if (_autoTextFieldValidation || forceValidate) {
      updateValidationData(model);
    }
  }

  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _PromotionEnterViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _PromotionEnterViewFocusNodes.values) {
      focusNode.dispose();
    }

    _PromotionEnterViewTextEditingControllers.clear();
    _PromotionEnterViewFocusNodes.clear();
  }
}

extension ValueProperties on FormStateHelper {
  bool get hasAnyValidationMessage => this
      .fieldsValidationMessages
      .values
      .any((validation) => validation != null);

  bool get isFormValid {
    if (!_autoTextFieldValidation) this.validateForm();

    return !hasAnyValidationMessage;
  }

  String? get promotionValue => this.formValueMap[PromotionValueKey] as String?;

  set promotionValue(String? value) {
    this.setData(
      this.formValueMap..addAll({PromotionValueKey: value}),
    );

    if (_PromotionEnterViewTextEditingControllers.containsKey(
        PromotionValueKey)) {
      _PromotionEnterViewTextEditingControllers[PromotionValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasPromotion =>
      this.formValueMap.containsKey(PromotionValueKey) &&
      (promotionValue?.isNotEmpty ?? false);

  bool get hasPromotionValidationMessage =>
      this.fieldsValidationMessages[PromotionValueKey]?.isNotEmpty ?? false;

  String? get promotionValidationMessage =>
      this.fieldsValidationMessages[PromotionValueKey];
}

extension Methods on FormStateHelper {
  setPromotionValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PromotionValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    promotionValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      PromotionValueKey: getValidationMessage(PromotionValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _PromotionEnterViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _PromotionEnterViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      PromotionValueKey: getValidationMessage(PromotionValueKey),
    });
