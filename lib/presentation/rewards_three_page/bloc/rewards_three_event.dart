// ignore_for_file: must_be_immutable

part of 'rewards_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RewardsThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RewardsThreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the RewardsThree widget is first created.
class RewardsThreeInitialEvent extends RewardsThreeEvent {
  @override
  List<Object?> get props => [];
}
