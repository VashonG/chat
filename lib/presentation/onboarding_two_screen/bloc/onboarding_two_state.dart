// ignore_for_file: must_be_immutable

part of 'onboarding_two_bloc.dart';

/// Represents the state of OnboardingTwo in the application.
class OnboardingTwoState extends Equatable {
  OnboardingTwoState({
    this.nameController,
    this.emailController,
    this.passwordController,
    this.onboardingTwoModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  OnboardingTwoModel? onboardingTwoModelObj;

  @override
  List<Object?> get props => [
        nameController,
        emailController,
        passwordController,
        onboardingTwoModelObj,
      ];

  OnboardingTwoState copyWith({
    TextEditingController? nameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    OnboardingTwoModel? onboardingTwoModelObj,
  }) {
    return OnboardingTwoState(
      nameController: nameController ?? this.nameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      onboardingTwoModelObj:
          onboardingTwoModelObj ?? this.onboardingTwoModelObj,
    );
  }
}
