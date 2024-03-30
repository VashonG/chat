// ignore_for_file: must_be_immutable

part of 'offer_three_bloc.dart';

/// Represents the state of OfferThree in the application.
class OfferThreeState extends Equatable {
  OfferThreeState({this.offerThreeModelObj});

  OfferThreeModel? offerThreeModelObj;

  @override
  List<Object?> get props => [
        offerThreeModelObj,
      ];

  OfferThreeState copyWith({OfferThreeModel? offerThreeModelObj}) {
    return OfferThreeState(
      offerThreeModelObj: offerThreeModelObj ?? this.offerThreeModelObj,
    );
  }
}
