// ignore_for_file: must_be_immutable

part of 'help_center_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HelpCenterFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HelpCenterFourEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HelpCenterFour widget is first created.
class HelpCenterFourInitialEvent extends HelpCenterFourEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends HelpCenterFourEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
