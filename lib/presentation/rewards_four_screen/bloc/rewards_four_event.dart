// ignore_for_file: must_be_immutable

part of 'rewards_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RewardsFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RewardsFourEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the RewardsFour widget is first created.
class RewardsFourInitialEvent extends RewardsFourEvent {
  @override
  List<Object?> get props => [];
}
