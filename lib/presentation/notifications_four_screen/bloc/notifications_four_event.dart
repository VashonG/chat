// ignore_for_file: must_be_immutable

part of 'notifications_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NotificationsFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NotificationsFourEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the NotificationsFour widget is first created.
class NotificationsFourInitialEvent extends NotificationsFourEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends NotificationsFourEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch1Event extends NotificationsFourEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch2Event extends NotificationsFourEvent {
  ChangeSwitch2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch3Event extends NotificationsFourEvent {
  ChangeSwitch3Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch4Event extends NotificationsFourEvent {
  ChangeSwitch4Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch5Event extends NotificationsFourEvent {
  ChangeSwitch5Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch6Event extends NotificationsFourEvent {
  ChangeSwitch6Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
