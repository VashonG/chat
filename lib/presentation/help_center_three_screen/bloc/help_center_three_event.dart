// ignore_for_file: must_be_immutable

part of 'help_center_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HelpCenterThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HelpCenterThreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HelpCenterThree widget is first created.
class HelpCenterThreeInitialEvent extends HelpCenterThreeEvent {
  @override
  List<Object?> get props => [];
}
