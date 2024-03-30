// ignore_for_file: must_be_immutable

part of 'frame_360_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Frame360 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Frame360Event extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Frame360 widget is first created.
class Frame360InitialEvent extends Frame360Event {
  @override
  List<Object?> get props => [];
}
