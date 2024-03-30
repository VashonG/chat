// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'list50off_on_item_model.dart';import 'userprofilerow1_item_model.dart';/// This class defines the variables used in the [offer_three_page],
/// and is typically used to hold data that is passed between different parts of the application.
class OfferThreeModel extends Equatable {OfferThreeModel({this.list50offOnItemList = const [], this.userprofilerow1ItemList = const [], }) {  }

List<List50offOnItemModel> list50offOnItemList;

List<Userprofilerow1ItemModel> userprofilerow1ItemList;

OfferThreeModel copyWith({List<List50offOnItemModel>? list50offOnItemList, List<Userprofilerow1ItemModel>? userprofilerow1ItemList, }) { return OfferThreeModel(
list50offOnItemList : list50offOnItemList ?? this.list50offOnItemList,
userprofilerow1ItemList : userprofilerow1ItemList ?? this.userprofilerow1ItemList,
); } 
@override List<Object?> get props => [list50offOnItemList,userprofilerow1ItemList];
 }
