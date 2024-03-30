// ignore_for_file: must_be_immutable

part of 'authentication_four_bloc.dart';

/// Represents the state of AuthenticationFour in the application.
class AuthenticationFourState extends Equatable {
  AuthenticationFourState({this.authenticationFourModelObj});

  AuthenticationFourModel? authenticationFourModelObj;

  @override
  List<Object?> get props => [
        authenticationFourModelObj,
      ];

  AuthenticationFourState copyWith(
      {AuthenticationFourModel? authenticationFourModelObj}) {
    return AuthenticationFourState(
      authenticationFourModelObj:
          authenticationFourModelObj ?? this.authenticationFourModelObj,
    );
  }
}
