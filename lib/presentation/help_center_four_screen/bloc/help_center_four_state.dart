// ignore_for_file: must_be_immutable

part of 'help_center_four_bloc.dart';

/// Represents the state of HelpCenterFour in the application.
class HelpCenterFourState extends Equatable {
  HelpCenterFourState({
    this.messageController,
    this.helpCenterFourModelObj,
  });

  TextEditingController? messageController;

  HelpCenterFourModel? helpCenterFourModelObj;

  @override
  List<Object?> get props => [
        messageController,
        helpCenterFourModelObj,
      ];

  HelpCenterFourState copyWith({
    TextEditingController? messageController,
    HelpCenterFourModel? helpCenterFourModelObj,
  }) {
    return HelpCenterFourState(
      messageController: messageController ?? this.messageController,
      helpCenterFourModelObj:
          helpCenterFourModelObj ?? this.helpCenterFourModelObj,
    );
  }
}
