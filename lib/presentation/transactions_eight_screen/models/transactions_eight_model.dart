// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'usersubscriptio3_item_model.dart';/// This class defines the variables used in the [transactions_eight_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TransactionsEightModel extends Equatable {TransactionsEightModel({this.usersubscriptio3ItemList = const []}) {  }

List<Usersubscriptio3ItemModel> usersubscriptio3ItemList;

TransactionsEightModel copyWith({List<Usersubscriptio3ItemModel>? usersubscriptio3ItemList}) { return TransactionsEightModel(
usersubscriptio3ItemList : usersubscriptio3ItemList ?? this.usersubscriptio3ItemList,
); } 
@override List<Object?> get props => [usersubscriptio3ItemList];
 }
