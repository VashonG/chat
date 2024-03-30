// ignore_for_file: must_be_immutable

part of 'onboarding_three_bloc.dart';

/// Represents the state of OnboardingThree in the application.
class OnboardingThreeState extends Equatable {
  OnboardingThreeState({
    this.streetvalueoneController,
    this.cityController,
    this.zipcodeController,
    this.selectedDropDownValue,
    this.onboardingThreeModelObj,
  });

  TextEditingController? streetvalueoneController;

  TextEditingController? cityController;

  TextEditingController? zipcodeController;

  SelectionPopupModel? selectedDropDownValue;

  OnboardingThreeModel? onboardingThreeModelObj;

  @override
  List<Object?> get props => [
        streetvalueoneController,
        cityController,
        zipcodeController,
        selectedDropDownValue,
        onboardingThreeModelObj,
      ];

  OnboardingThreeState copyWith({
    TextEditingController? streetvalueoneController,
    TextEditingController? cityController,
    TextEditingController? zipcodeController,
    SelectionPopupModel? selectedDropDownValue,
    OnboardingThreeModel? onboardingThreeModelObj,
  }) {
    return OnboardingThreeState(
      streetvalueoneController:
          streetvalueoneController ?? this.streetvalueoneController,
      cityController: cityController ?? this.cityController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      onboardingThreeModelObj:
          onboardingThreeModelObj ?? this.onboardingThreeModelObj,
    );
  }
}
