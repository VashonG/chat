// ignore_for_file: must_be_immutable

part of 'dashboard_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DashboardOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DashboardOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the DashboardOne widget is first created.
class DashboardOneInitialEvent extends DashboardOneEvent {
  @override
  List<Object?> get props => [];
}
