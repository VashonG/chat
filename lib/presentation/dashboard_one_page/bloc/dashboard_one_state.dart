// ignore_for_file: must_be_immutable

part of 'dashboard_one_bloc.dart';

/// Represents the state of DashboardOne in the application.
class DashboardOneState extends Equatable {
  DashboardOneState({this.dashboardOneModelObj});

  DashboardOneModel? dashboardOneModelObj;

  @override
  List<Object?> get props => [
        dashboardOneModelObj,
      ];

  DashboardOneState copyWith({DashboardOneModel? dashboardOneModelObj}) {
    return DashboardOneState(
      dashboardOneModelObj: dashboardOneModelObj ?? this.dashboardOneModelObj,
    );
  }
}
