// ignore_for_file: must_be_immutable

part of 'offer_one_bloc.dart';

/// Represents the state of OfferOne in the application.
class OfferOneState extends Equatable {
  OfferOneState({
    this.priceController,
    this.priceController1,
    this.offerOneModelObj,
  });

  TextEditingController? priceController;

  TextEditingController? priceController1;

  OfferOneModel? offerOneModelObj;

  @override
  List<Object?> get props => [
        priceController,
        priceController1,
        offerOneModelObj,
      ];

  OfferOneState copyWith({
    TextEditingController? priceController,
    TextEditingController? priceController1,
    OfferOneModel? offerOneModelObj,
  }) {
    return OfferOneState(
      priceController: priceController ?? this.priceController,
      priceController1: priceController1 ?? this.priceController1,
      offerOneModelObj: offerOneModelObj ?? this.offerOneModelObj,
    );
  }
}
