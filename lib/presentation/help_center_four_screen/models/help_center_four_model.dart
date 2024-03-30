// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'chipviewgraph1l_item_model.dart';/// This class defines the variables used in the [help_center_four_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HelpCenterFourModel extends Equatable {HelpCenterFourModel({this.chipviewgraph1lItemList = const []}) {  }

List<Chipviewgraph1lItemModel> chipviewgraph1lItemList;

HelpCenterFourModel copyWith({List<Chipviewgraph1lItemModel>? chipviewgraph1lItemList}) { return HelpCenterFourModel(
chipviewgraph1lItemList : chipviewgraph1lItemList ?? this.chipviewgraph1lItemList,
); } 
@override List<Object?> get props => [chipviewgraph1lItemList];
 }
