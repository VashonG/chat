// ignore_for_file: must_be_immutable

part of 'porfile_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PorfileOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PorfileOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PorfileOne widget is first created.
class PorfileOneInitialEvent extends PorfileOneEvent {
  @override
  List<Object?> get props => [];
}
