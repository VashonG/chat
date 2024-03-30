// ignore_for_file: must_be_immutable

part of 'notifications_one_bloc.dart';

/// Represents the state of NotificationsOne in the application.
class NotificationsOneState extends Equatable {
  NotificationsOneState({
    this.totalstocksoneController,
    this.totalsharesoneController,
    this.selectedDropDownValue,
    this.notificationsOneModelObj,
  });

  TextEditingController? totalstocksoneController;

  TextEditingController? totalsharesoneController;

  SelectionPopupModel? selectedDropDownValue;

  NotificationsOneModel? notificationsOneModelObj;

  @override
  List<Object?> get props => [
        totalstocksoneController,
        totalsharesoneController,
        selectedDropDownValue,
        notificationsOneModelObj,
      ];

  NotificationsOneState copyWith({
    TextEditingController? totalstocksoneController,
    TextEditingController? totalsharesoneController,
    SelectionPopupModel? selectedDropDownValue,
    NotificationsOneModel? notificationsOneModelObj,
  }) {
    return NotificationsOneState(
      totalstocksoneController:
          totalstocksoneController ?? this.totalstocksoneController,
      totalsharesoneController:
          totalsharesoneController ?? this.totalsharesoneController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      notificationsOneModelObj:
          notificationsOneModelObj ?? this.notificationsOneModelObj,
    );
  }
}
