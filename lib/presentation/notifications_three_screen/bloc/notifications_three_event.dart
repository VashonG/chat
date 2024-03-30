// ignore_for_file: must_be_immutable

part of 'notifications_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NotificationsThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NotificationsThreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the NotificationsThree widget is first created.
class NotificationsThreeInitialEvent extends NotificationsThreeEvent {
  @override
  List<Object?> get props => [];
}
