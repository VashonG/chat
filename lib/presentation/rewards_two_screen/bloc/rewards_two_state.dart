// ignore_for_file: must_be_immutable

part of 'rewards_two_bloc.dart';

/// Represents the state of RewardsTwo in the application.
class RewardsTwoState extends Equatable {
  RewardsTwoState({this.rewardsTwoModelObj});

  RewardsTwoModel? rewardsTwoModelObj;

  @override
  List<Object?> get props => [
        rewardsTwoModelObj,
      ];

  RewardsTwoState copyWith({RewardsTwoModel? rewardsTwoModelObj}) {
    return RewardsTwoState(
      rewardsTwoModelObj: rewardsTwoModelObj ?? this.rewardsTwoModelObj,
    );
  }
}
