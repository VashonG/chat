// ignore_for_file: must_be_immutable

part of 'transactions_three_bloc.dart';

/// Represents the state of TransactionsThree in the application.
class TransactionsThreeState extends Equatable {
  TransactionsThreeState({
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.transactionsThreeModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  TransactionsThreeModel? transactionsThreeModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDropDownValue1,
        transactionsThreeModelObj,
      ];

  TransactionsThreeState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    TransactionsThreeModel? transactionsThreeModelObj,
  }) {
    return TransactionsThreeState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      transactionsThreeModelObj:
          transactionsThreeModelObj ?? this.transactionsThreeModelObj,
    );
  }
}
