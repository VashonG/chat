// ignore_for_file: must_be_immutable

part of 'rewards_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RewardsTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RewardsTwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the RewardsTwo widget is first created.
class RewardsTwoInitialEvent extends RewardsTwoEvent {
  @override
  List<Object?> get props => [];
}
