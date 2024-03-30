// ignore_for_file: must_be_immutable

part of 'authentication_three_bloc.dart';

/// Represents the state of AuthenticationThree in the application.
class AuthenticationThreeState extends Equatable {
  AuthenticationThreeState({
    this.sliderIndex = 0,
    this.authenticationThreeModelObj,
  });

  AuthenticationThreeModel? authenticationThreeModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        authenticationThreeModelObj,
      ];

  AuthenticationThreeState copyWith({
    int? sliderIndex,
    AuthenticationThreeModel? authenticationThreeModelObj,
  }) {
    return AuthenticationThreeState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      authenticationThreeModelObj:
          authenticationThreeModelObj ?? this.authenticationThreeModelObj,
    );
  }
}
