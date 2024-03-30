// ignore_for_file: must_be_immutable

part of 'help_center_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HelpCenterTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HelpCenterTwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HelpCenterTwo widget is first created.
class HelpCenterTwoInitialEvent extends HelpCenterTwoEvent {
  @override
  List<Object?> get props => [];
}
