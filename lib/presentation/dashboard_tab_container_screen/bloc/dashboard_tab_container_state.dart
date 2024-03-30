// ignore_for_file: must_be_immutable

part of 'dashboard_tab_container_bloc.dart';

/// Represents the state of DashboardTabContainer in the application.
class DashboardTabContainerState extends Equatable {
  DashboardTabContainerState({this.dashboardTabContainerModelObj});

  DashboardTabContainerModel? dashboardTabContainerModelObj;

  @override
  List<Object?> get props => [
        dashboardTabContainerModelObj,
      ];

  DashboardTabContainerState copyWith(
      {DashboardTabContainerModel? dashboardTabContainerModelObj}) {
    return DashboardTabContainerState(
      dashboardTabContainerModelObj:
          dashboardTabContainerModelObj ?? this.dashboardTabContainerModelObj,
    );
  }
}
