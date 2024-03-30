// ignore_for_file: must_be_immutable

part of 'onboarding_five_bloc.dart';

/// Represents the state of OnboardingFive in the application.
class OnboardingFiveState extends Equatable {
  OnboardingFiveState({
    this.emailController,
    this.onboardingFiveModelObj,
  });

  TextEditingController? emailController;

  OnboardingFiveModel? onboardingFiveModelObj;

  @override
  List<Object?> get props => [
        emailController,
        onboardingFiveModelObj,
      ];

  OnboardingFiveState copyWith({
    TextEditingController? emailController,
    OnboardingFiveModel? onboardingFiveModelObj,
  }) {
    return OnboardingFiveState(
      emailController: emailController ?? this.emailController,
      onboardingFiveModelObj:
          onboardingFiveModelObj ?? this.onboardingFiveModelObj,
    );
  }
}
