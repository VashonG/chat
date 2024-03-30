// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'useroffer_item_model.dart';/// This class defines the variables used in the [notifications_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NotificationsTwoModel extends Equatable {NotificationsTwoModel({this.userofferItemList = const []}) {  }

List<UserofferItemModel> userofferItemList;

NotificationsTwoModel copyWith({List<UserofferItemModel>? userofferItemList}) { return NotificationsTwoModel(
userofferItemList : userofferItemList ?? this.userofferItemList,
); } 
@override List<Object?> get props => [userofferItemList];
 }
