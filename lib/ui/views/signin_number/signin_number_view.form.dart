// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String NumberValueKey = 'number';

final Map<String, TextEditingController>
    _SigninNumberViewTextEditingControllers = {};

final Map<String, FocusNode> _SigninNumberViewFocusNodes = {};

final Map<String, String? Function(String?)?> _SigninNumberViewTextValidations =
    {
  NumberValueKey: null,
};

mixin $SigninNumberView {
  TextEditingController get numberController =>
      _getFormTextEditingController(NumberValueKey);

  FocusNode get numberFocusNode => _getFormFocusNode(NumberValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_SigninNumberViewTextEditingControllers.containsKey(key)) {
      return _SigninNumberViewTextEditingControllers[key]!;
    }

    _SigninNumberViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _SigninNumberViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_SigninNumberViewFocusNodes.containsKey(key)) {
      return _SigninNumberViewFocusNodes[key]!;
    }
    _SigninNumberViewFocusNodes[key] = FocusNode();
    return _SigninNumberViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    numberController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    numberController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          NumberValueKey: numberController.text,
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

    for (var controller in _SigninNumberViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _SigninNumberViewFocusNodes.values) {
      focusNode.dispose();
    }

    _SigninNumberViewTextEditingControllers.clear();
    _SigninNumberViewFocusNodes.clear();
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

  String? get numberValue => this.formValueMap[NumberValueKey] as String?;

  set numberValue(String? value) {
    this.setData(
      this.formValueMap..addAll({NumberValueKey: value}),
    );

    if (_SigninNumberViewTextEditingControllers.containsKey(NumberValueKey)) {
      _SigninNumberViewTextEditingControllers[NumberValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasNumber =>
      this.formValueMap.containsKey(NumberValueKey) &&
      (numberValue?.isNotEmpty ?? false);

  bool get hasNumberValidationMessage =>
      this.fieldsValidationMessages[NumberValueKey]?.isNotEmpty ?? false;

  String? get numberValidationMessage =>
      this.fieldsValidationMessages[NumberValueKey];
}

extension Methods on FormStateHelper {
  setNumberValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[NumberValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    numberValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      NumberValueKey: getValidationMessage(NumberValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _SigninNumberViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _SigninNumberViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      NumberValueKey: getValidationMessage(NumberValueKey),
    });
