// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [chipviewgraph1l_item_widget] screen.
class Chipviewgraph1lItemModel extends Equatable {Chipviewgraph1lItemModel({this.graph1line = "Hi, I’m having issues with my account", this.isSelected = false, }) {  }

String graph1line;

bool isSelected;

Chipviewgraph1lItemModel copyWith({String? graph1line, bool? isSelected, }) { return Chipviewgraph1lItemModel(
graph1line : graph1line ?? this.graph1line,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [graph1line,isSelected];
 }
