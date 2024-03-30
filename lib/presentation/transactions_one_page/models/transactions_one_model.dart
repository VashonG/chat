// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'chipviewtop_up_item_model.dart';import 'usersubscriptio1_item_model.dart';/// This class defines the variables used in the [transactions_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TransactionsOneModel extends Equatable {TransactionsOneModel({this.chipviewtopUpItemList = const [], this.usersubscriptio1ItemList = const [], }) {  }

List<ChipviewtopUpItemModel> chipviewtopUpItemList;

List<Usersubscriptio1ItemModel> usersubscriptio1ItemList;

TransactionsOneModel copyWith({List<ChipviewtopUpItemModel>? chipviewtopUpItemList, List<Usersubscriptio1ItemModel>? usersubscriptio1ItemList, }) { return TransactionsOneModel(
chipviewtopUpItemList : chipviewtopUpItemList ?? this.chipviewtopUpItemList,
usersubscriptio1ItemList : usersubscriptio1ItemList ?? this.usersubscriptio1ItemList,
); } 
@override List<Object?> get props => [chipviewtopUpItemList,usersubscriptio1ItemList];
 }
