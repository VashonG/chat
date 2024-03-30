// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'featuredoffer_item_model.dart';import 'userprofile_item_model.dart';/// This class defines the variables used in the [offer_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class OfferOneModel extends Equatable {OfferOneModel({this.featuredofferItemList = const [], this.userprofileItemList = const [], }) {  }

List<FeaturedofferItemModel> featuredofferItemList;

List<UserprofileItemModel> userprofileItemList;

OfferOneModel copyWith({List<FeaturedofferItemModel>? featuredofferItemList, List<UserprofileItemModel>? userprofileItemList, }) { return OfferOneModel(
featuredofferItemList : featuredofferItemList ?? this.featuredofferItemList,
userprofileItemList : userprofileItemList ?? this.userprofileItemList,
); } 
@override List<Object?> get props => [featuredofferItemList,userprofileItemList];
 }
