// ignore_for_file: must_be_immutable

part of 'rewards_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RewardsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RewardsOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the RewardsOne widget is first created.
class RewardsOneInitialEvent extends RewardsOneEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends RewardsOneEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
