// ignore_for_file: must_be_immutable

part of 'privacy_policy_two_bloc.dart';

/// Represents the state of PrivacyPolicyTwo in the application.
class PrivacyPolicyTwoState extends Equatable {
  PrivacyPolicyTwoState({
    this.isSelectedSwitch = false,
    this.privacyPolicyTwoModelObj,
  });

  PrivacyPolicyTwoModel? privacyPolicyTwoModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        privacyPolicyTwoModelObj,
      ];

  PrivacyPolicyTwoState copyWith({
    bool? isSelectedSwitch,
    PrivacyPolicyTwoModel? privacyPolicyTwoModelObj,
  }) {
    return PrivacyPolicyTwoState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      privacyPolicyTwoModelObj:
          privacyPolicyTwoModelObj ?? this.privacyPolicyTwoModelObj,
    );
  }
}
