// ignore_for_file: must_be_immutable

part of 'notifications_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NotificationsTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NotificationsTwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the NotificationsTwo widget is first created.
class NotificationsTwoInitialEvent extends NotificationsTwoEvent {
  @override
  List<Object?> get props => [];
}
