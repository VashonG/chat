// ignore_for_file: must_be_immutable

part of 'notifications_two_bloc.dart';

/// Represents the state of NotificationsTwo in the application.
class NotificationsTwoState extends Equatable {
  NotificationsTwoState({this.notificationsTwoModelObj});

  NotificationsTwoModel? notificationsTwoModelObj;

  @override
  List<Object?> get props => [
        notificationsTwoModelObj,
      ];

  NotificationsTwoState copyWith(
      {NotificationsTwoModel? notificationsTwoModelObj}) {
    return NotificationsTwoState(
      notificationsTwoModelObj:
          notificationsTwoModelObj ?? this.notificationsTwoModelObj,
    );
  }
}
