// ignore_for_file: must_be_immutable

part of 'dashboard_one_container_bloc.dart';

/// Represents the state of DashboardOneContainer in the application.
class DashboardOneContainerState extends Equatable {
  DashboardOneContainerState({this.dashboardOneContainerModelObj});

  DashboardOneContainerModel? dashboardOneContainerModelObj;

  @override
  List<Object?> get props => [
        dashboardOneContainerModelObj,
      ];

  DashboardOneContainerState copyWith(
      {DashboardOneContainerModel? dashboardOneContainerModelObj}) {
    return DashboardOneContainerState(
      dashboardOneContainerModelObj:
          dashboardOneContainerModelObj ?? this.dashboardOneContainerModelObj,
    );
  }
}
