// ignore_for_file: must_be_immutable

part of 'transactions_one_bloc.dart';

/// Represents the state of TransactionsOne in the application.
class TransactionsOneState extends Equatable {
  TransactionsOneState({this.transactionsOneModelObj});

  TransactionsOneModel? transactionsOneModelObj;

  @override
  List<Object?> get props => [
        transactionsOneModelObj,
      ];

  TransactionsOneState copyWith(
      {TransactionsOneModel? transactionsOneModelObj}) {
    return TransactionsOneState(
      transactionsOneModelObj:
          transactionsOneModelObj ?? this.transactionsOneModelObj,
    );
  }
}
