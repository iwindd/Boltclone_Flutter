// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String PointValueKey = 'point';
const String DestinationValueKey = 'destination';

final Map<String, TextEditingController> _SearchViewTextEditingControllers = {};

final Map<String, FocusNode> _SearchViewFocusNodes = {};

final Map<String, String? Function(String?)?> _SearchViewTextValidations = {
  PointValueKey: null,
  DestinationValueKey: null,
};

mixin $SearchView {
  TextEditingController get pointController =>
      _getFormTextEditingController(PointValueKey);
  TextEditingController get destinationController =>
      _getFormTextEditingController(DestinationValueKey);

  FocusNode get pointFocusNode => _getFormFocusNode(PointValueKey);
  FocusNode get destinationFocusNode => _getFormFocusNode(DestinationValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_SearchViewTextEditingControllers.containsKey(key)) {
      return _SearchViewTextEditingControllers[key]!;
    }

    _SearchViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _SearchViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_SearchViewFocusNodes.containsKey(key)) {
      return _SearchViewFocusNodes[key]!;
    }
    _SearchViewFocusNodes[key] = FocusNode();
    return _SearchViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    pointController.addListener(() => _updateFormData(model));
    destinationController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    pointController.addListener(() => _updateFormData(model));
    destinationController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          PointValueKey: pointController.text,
          DestinationValueKey: destinationController.text,
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

    for (var controller in _SearchViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _SearchViewFocusNodes.values) {
      focusNode.dispose();
    }

    _SearchViewTextEditingControllers.clear();
    _SearchViewFocusNodes.clear();
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

  String? get pointValue => this.formValueMap[PointValueKey] as String?;
  String? get destinationValue =>
      this.formValueMap[DestinationValueKey] as String?;

  set pointValue(String? value) {
    this.setData(
      this.formValueMap..addAll({PointValueKey: value}),
    );

    if (_SearchViewTextEditingControllers.containsKey(PointValueKey)) {
      _SearchViewTextEditingControllers[PointValueKey]?.text = value ?? '';
    }
  }

  set destinationValue(String? value) {
    this.setData(
      this.formValueMap..addAll({DestinationValueKey: value}),
    );

    if (_SearchViewTextEditingControllers.containsKey(DestinationValueKey)) {
      _SearchViewTextEditingControllers[DestinationValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasPoint =>
      this.formValueMap.containsKey(PointValueKey) &&
      (pointValue?.isNotEmpty ?? false);
  bool get hasDestination =>
      this.formValueMap.containsKey(DestinationValueKey) &&
      (destinationValue?.isNotEmpty ?? false);

  bool get hasPointValidationMessage =>
      this.fieldsValidationMessages[PointValueKey]?.isNotEmpty ?? false;
  bool get hasDestinationValidationMessage =>
      this.fieldsValidationMessages[DestinationValueKey]?.isNotEmpty ?? false;

  String? get pointValidationMessage =>
      this.fieldsValidationMessages[PointValueKey];
  String? get destinationValidationMessage =>
      this.fieldsValidationMessages[DestinationValueKey];
}

extension Methods on FormStateHelper {
  setPointValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PointValueKey] = validationMessage;
  setDestinationValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[DestinationValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    pointValue = '';
    destinationValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      PointValueKey: getValidationMessage(PointValueKey),
      DestinationValueKey: getValidationMessage(DestinationValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _SearchViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _SearchViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      PointValueKey: getValidationMessage(PointValueKey),
      DestinationValueKey: getValidationMessage(DestinationValueKey),
    });
