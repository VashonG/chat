// ignore_for_file: must_be_immutable

part of 'help_center_two_bloc.dart';

/// Represents the state of HelpCenterTwo in the application.
class HelpCenterTwoState extends Equatable {
  HelpCenterTwoState({this.helpCenterTwoModelObj});

  HelpCenterTwoModel? helpCenterTwoModelObj;

  @override
  List<Object?> get props => [
        helpCenterTwoModelObj,
      ];

  HelpCenterTwoState copyWith({HelpCenterTwoModel? helpCenterTwoModelObj}) {
    return HelpCenterTwoState(
      helpCenterTwoModelObj:
          helpCenterTwoModelObj ?? this.helpCenterTwoModelObj,
    );
  }
}
