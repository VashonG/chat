// ignore_for_file: must_be_immutable

part of 'notifications_four_bloc.dart';

/// Represents the state of NotificationsFour in the application.
class NotificationsFourState extends Equatable {
  NotificationsFourState({
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.isSelectedSwitch2 = false,
    this.isSelectedSwitch3 = false,
    this.isSelectedSwitch4 = false,
    this.isSelectedSwitch5 = false,
    this.isSelectedSwitch6 = false,
    this.notificationsFourModelObj,
  });

  NotificationsFourModel? notificationsFourModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  bool isSelectedSwitch2;

  bool isSelectedSwitch3;

  bool isSelectedSwitch4;

  bool isSelectedSwitch5;

  bool isSelectedSwitch6;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        isSelectedSwitch1,
        isSelectedSwitch2,
        isSelectedSwitch3,
        isSelectedSwitch4,
        isSelectedSwitch5,
        isSelectedSwitch6,
        notificationsFourModelObj,
      ];

  NotificationsFourState copyWith({
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    bool? isSelectedSwitch2,
    bool? isSelectedSwitch3,
    bool? isSelectedSwitch4,
    bool? isSelectedSwitch5,
    bool? isSelectedSwitch6,
    NotificationsFourModel? notificationsFourModelObj,
  }) {
    return NotificationsFourState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      isSelectedSwitch2: isSelectedSwitch2 ?? this.isSelectedSwitch2,
      isSelectedSwitch3: isSelectedSwitch3 ?? this.isSelectedSwitch3,
      isSelectedSwitch4: isSelectedSwitch4 ?? this.isSelectedSwitch4,
      isSelectedSwitch5: isSelectedSwitch5 ?? this.isSelectedSwitch5,
      isSelectedSwitch6: isSelectedSwitch6 ?? this.isSelectedSwitch6,
      notificationsFourModelObj:
          notificationsFourModelObj ?? this.notificationsFourModelObj,
    );
  }
}
