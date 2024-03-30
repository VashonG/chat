// ignore_for_file: must_be_immutable

part of 'rewards_three_bloc.dart';

/// Represents the state of RewardsThree in the application.
class RewardsThreeState extends Equatable {
  RewardsThreeState({
    this.searchController,
    this.rewardsThreeModelObj,
  });

  TextEditingController? searchController;

  RewardsThreeModel? rewardsThreeModelObj;

  @override
  List<Object?> get props => [
        searchController,
        rewardsThreeModelObj,
      ];

  RewardsThreeState copyWith({
    TextEditingController? searchController,
    RewardsThreeModel? rewardsThreeModelObj,
  }) {
    return RewardsThreeState(
      searchController: searchController ?? this.searchController,
      rewardsThreeModelObj: rewardsThreeModelObj ?? this.rewardsThreeModelObj,
    );
  }
}
