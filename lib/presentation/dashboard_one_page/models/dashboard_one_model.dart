// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'usersubscriptio_item_model.dart';/// This class defines the variables used in the [dashboard_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DashboardOneModel extends Equatable {DashboardOneModel({this.usersubscriptioItemList = const []}) {  }

List<UsersubscriptioItemModel> usersubscriptioItemList;

DashboardOneModel copyWith({List<UsersubscriptioItemModel>? usersubscriptioItemList}) { return DashboardOneModel(
usersubscriptioItemList : usersubscriptioItemList ?? this.usersubscriptioItemList,
); } 
@override List<Object?> get props => [usersubscriptioItemList];
 }
