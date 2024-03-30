// ignore_for_file: must_be_immutable

part of 'dashboard_one_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DashboardOneContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DashboardOneContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the DashboardOneContainer widget is first created.
class DashboardOneContainerInitialEvent extends DashboardOneContainerEvent {
  @override
  List<Object?> get props => [];
}
