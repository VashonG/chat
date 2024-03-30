// ignore_for_file: must_be_immutable

part of 'authentication_one_bloc.dart';

/// Represents the state of AuthenticationOne in the application.
class AuthenticationOneState extends Equatable {
  AuthenticationOneState({
    this.emailController,
    this.authenticationOneModelObj,
  });

  TextEditingController? emailController;

  AuthenticationOneModel? authenticationOneModelObj;

  @override
  List<Object?> get props => [
        emailController,
        authenticationOneModelObj,
      ];

  AuthenticationOneState copyWith({
    TextEditingController? emailController,
    AuthenticationOneModel? authenticationOneModelObj,
  }) {
    return AuthenticationOneState(
      emailController: emailController ?? this.emailController,
      authenticationOneModelObj:
          authenticationOneModelObj ?? this.authenticationOneModelObj,
    );
  }
}
