// ignore_for_file: must_be_immutable

part of 'help_center_one_bloc.dart';

/// Represents the state of HelpCenterOne in the application.
class HelpCenterOneState extends Equatable {
  HelpCenterOneState({this.helpCenterOneModelObj});

  HelpCenterOneModel? helpCenterOneModelObj;

  @override
  List<Object?> get props => [
        helpCenterOneModelObj,
      ];

  HelpCenterOneState copyWith({HelpCenterOneModel? helpCenterOneModelObj}) {
    return HelpCenterOneState(
      helpCenterOneModelObj:
          helpCenterOneModelObj ?? this.helpCenterOneModelObj,
    );
  }
}
