// ignore_for_file: must_be_immutable

part of 'help_center_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HelpCenterOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HelpCenterOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HelpCenterOne widget is first created.
class HelpCenterOneInitialEvent extends HelpCenterOneEvent {
  @override
  List<Object?> get props => [];
}
