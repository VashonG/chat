// ignore_for_file: must_be_immutable

part of 'rewards_four_bloc.dart';

/// Represents the state of RewardsFour in the application.
class RewardsFourState extends Equatable {
  RewardsFourState({this.rewardsFourModelObj});

  RewardsFourModel? rewardsFourModelObj;

  @override
  List<Object?> get props => [
        rewardsFourModelObj,
      ];

  RewardsFourState copyWith({RewardsFourModel? rewardsFourModelObj}) {
    return RewardsFourState(
      rewardsFourModelObj: rewardsFourModelObj ?? this.rewardsFourModelObj,
    );
  }
}
