// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'rowinput_item_model.dart';/// This class defines the variables used in the [authentication_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AuthenticationThreeModel extends Equatable {AuthenticationThreeModel({this.rowinputItemList = const []}) {  }

List<RowinputItemModel> rowinputItemList;

AuthenticationThreeModel copyWith({List<RowinputItemModel>? rowinputItemList}) { return AuthenticationThreeModel(
rowinputItemList : rowinputItemList ?? this.rowinputItemList,
); } 
@override List<Object?> get props => [rowinputItemList];
 }
