// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:carat_card/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [rewards_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RewardsOneModel extends Equatable {RewardsOneModel({this.dropdownItemList = const []}) {  }

List<SelectionPopupModel> dropdownItemList;

RewardsOneModel copyWith({List<SelectionPopupModel>? dropdownItemList}) { return RewardsOneModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [dropdownItemList];
 }
