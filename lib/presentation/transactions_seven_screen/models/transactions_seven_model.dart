// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'usersubscriptio2_item_model.dart';/// This class defines the variables used in the [transactions_seven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TransactionsSevenModel extends Equatable {TransactionsSevenModel({this.usersubscriptio2ItemList = const []}) {  }

List<Usersubscriptio2ItemModel> usersubscriptio2ItemList;

TransactionsSevenModel copyWith({List<Usersubscriptio2ItemModel>? usersubscriptio2ItemList}) { return TransactionsSevenModel(
usersubscriptio2ItemList : usersubscriptio2ItemList ?? this.usersubscriptio2ItemList,
); } 
@override List<Object?> get props => [usersubscriptio2ItemList];
 }
