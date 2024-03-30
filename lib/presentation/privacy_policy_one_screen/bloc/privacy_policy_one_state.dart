// ignore_for_file: must_be_immutable

part of 'privacy_policy_one_bloc.dart';

/// Represents the state of PrivacyPolicyOne in the application.
class PrivacyPolicyOneState extends Equatable {
  PrivacyPolicyOneState({
    this.isSelectedSwitch = false,
    this.privacyPolicyOneModelObj,
  });

  PrivacyPolicyOneModel? privacyPolicyOneModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        privacyPolicyOneModelObj,
      ];

  PrivacyPolicyOneState copyWith({
    bool? isSelectedSwitch,
    PrivacyPolicyOneModel? privacyPolicyOneModelObj,
  }) {
    return PrivacyPolicyOneState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      privacyPolicyOneModelObj:
          privacyPolicyOneModelObj ?? this.privacyPolicyOneModelObj,
    );
  }
}
