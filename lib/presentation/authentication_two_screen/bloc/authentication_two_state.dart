// ignore_for_file: must_be_immutable

part of 'authentication_two_bloc.dart';

/// Represents the state of AuthenticationTwo in the application.
class AuthenticationTwoState extends Equatable {
  AuthenticationTwoState({
    this.emailController,
    this.passwordController,
    this.authenticationTwoModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  AuthenticationTwoModel? authenticationTwoModelObj;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        authenticationTwoModelObj,
      ];

  AuthenticationTwoState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    AuthenticationTwoModel? authenticationTwoModelObj,
  }) {
    return AuthenticationTwoState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      authenticationTwoModelObj:
          authenticationTwoModelObj ?? this.authenticationTwoModelObj,
    );
  }
}
