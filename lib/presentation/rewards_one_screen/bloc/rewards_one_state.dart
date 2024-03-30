// ignore_for_file: must_be_immutable

part of 'rewards_one_bloc.dart';

/// Represents the state of RewardsOne in the application.
class RewardsOneState extends Equatable {
  RewardsOneState({
    this.totalsharesoneController,
    this.currentsharesController,
    this.selectedDropDownValue,
    this.rewardsOneModelObj,
  });

  TextEditingController? totalsharesoneController;

  TextEditingController? currentsharesController;

  SelectionPopupModel? selectedDropDownValue;

  RewardsOneModel? rewardsOneModelObj;

  @override
  List<Object?> get props => [
        totalsharesoneController,
        currentsharesController,
        selectedDropDownValue,
        rewardsOneModelObj,
      ];

  RewardsOneState copyWith({
    TextEditingController? totalsharesoneController,
    TextEditingController? currentsharesController,
    SelectionPopupModel? selectedDropDownValue,
    RewardsOneModel? rewardsOneModelObj,
  }) {
    return RewardsOneState(
      totalsharesoneController:
          totalsharesoneController ?? this.totalsharesoneController,
      currentsharesController:
          currentsharesController ?? this.currentsharesController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      rewardsOneModelObj: rewardsOneModelObj ?? this.rewardsOneModelObj,
    );
  }
}
