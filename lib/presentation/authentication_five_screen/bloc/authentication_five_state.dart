// ignore_for_file: must_be_immutable

part of 'authentication_five_bloc.dart';

/// Represents the state of AuthenticationFive in the application.
class AuthenticationFiveState extends Equatable {
  AuthenticationFiveState({this.authenticationFiveModelObj});

  AuthenticationFiveModel? authenticationFiveModelObj;

  @override
  List<Object?> get props => [
        authenticationFiveModelObj,
      ];

  AuthenticationFiveState copyWith(
      {AuthenticationFiveModel? authenticationFiveModelObj}) {
    return AuthenticationFiveState(
      authenticationFiveModelObj:
          authenticationFiveModelObj ?? this.authenticationFiveModelObj,
    );
  }
}
