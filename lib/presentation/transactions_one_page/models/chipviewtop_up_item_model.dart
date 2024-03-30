// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [chipviewtop_up_item_widget] screen.
class ChipviewtopUpItemModel extends Equatable {ChipviewtopUpItemModel({this.topup = "Top up", this.isSelected = false, }) {  }

String topup;

bool isSelected;

ChipviewtopUpItemModel copyWith({String? topup, bool? isSelected, }) { return ChipviewtopUpItemModel(
topup : topup ?? this.topup,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [topup,isSelected];
 }
