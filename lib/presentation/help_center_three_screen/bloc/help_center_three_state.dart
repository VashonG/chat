// ignore_for_file: must_be_immutable

part of 'help_center_three_bloc.dart';

/// Represents the state of HelpCenterThree in the application.
class HelpCenterThreeState extends Equatable {
  HelpCenterThreeState({this.helpCenterThreeModelObj});

  HelpCenterThreeModel? helpCenterThreeModelObj;

  @override
  List<Object?> get props => [
        helpCenterThreeModelObj,
      ];

  HelpCenterThreeState copyWith(
      {HelpCenterThreeModel? helpCenterThreeModelObj}) {
    return HelpCenterThreeState(
      helpCenterThreeModelObj:
          helpCenterThreeModelObj ?? this.helpCenterThreeModelObj,
    );
  }
}
