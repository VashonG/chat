// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'userprofilerow_item_model.dart';/// This class defines the variables used in the [rewards_three_page],
/// and is typically used to hold data that is passed between different parts of the application.
class RewardsThreeModel extends Equatable {RewardsThreeModel({this.userprofilerowItemList = const []}) {  }

List<UserprofilerowItemModel> userprofilerowItemList;

RewardsThreeModel copyWith({List<UserprofilerowItemModel>? userprofilerowItemList}) { return RewardsThreeModel(
userprofilerowItemList : userprofilerowItemList ?? this.userprofilerowItemList,
); } 
@override List<Object?> get props => [userprofilerowItemList];
 }
