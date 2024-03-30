// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'userprofile1_item_model.dart';/// This class defines the variables used in the [offer_two_page],
/// and is typically used to hold data that is passed between different parts of the application.
class OfferTwoModel extends Equatable {OfferTwoModel({this.userprofile1ItemList = const []}) {  }

List<Userprofile1ItemModel> userprofile1ItemList;

OfferTwoModel copyWith({List<Userprofile1ItemModel>? userprofile1ItemList}) { return OfferTwoModel(
userprofile1ItemList : userprofile1ItemList ?? this.userprofile1ItemList,
); } 
@override List<Object?> get props => [userprofile1ItemList];
 }
