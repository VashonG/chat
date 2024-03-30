// ignore_for_file: must_be_immutable

part of 'offer_two_bloc.dart';

/// Represents the state of OfferTwo in the application.
class OfferTwoState extends Equatable {
  OfferTwoState({this.offerTwoModelObj});

  OfferTwoModel? offerTwoModelObj;

  @override
  List<Object?> get props => [
        offerTwoModelObj,
      ];

  OfferTwoState copyWith({OfferTwoModel? offerTwoModelObj}) {
    return OfferTwoState(
      offerTwoModelObj: offerTwoModelObj ?? this.offerTwoModelObj,
    );
  }
}
