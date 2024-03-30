// ignore_for_file: must_be_immutable

part of 'dashboard_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DashboardTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DashboardTabContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the DashboardTabContainer widget is first created.
class DashboardTabContainerInitialEvent extends DashboardTabContainerEvent {
  @override
  List<Object?> get props => [];
}
