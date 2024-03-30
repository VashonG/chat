// ignore_for_file: must_be_immutable

part of 'offer_one_tab_container_bloc.dart';

/// Represents the state of OfferOneTabContainer in the application.
class OfferOneTabContainerState extends Equatable {
  OfferOneTabContainerState({this.offerOneTabContainerModelObj});

  OfferOneTabContainerModel? offerOneTabContainerModelObj;

  @override
  List<Object?> get props => [
        offerOneTabContainerModelObj,
      ];

  OfferOneTabContainerState copyWith(
      {OfferOneTabContainerModel? offerOneTabContainerModelObj}) {
    return OfferOneTabContainerState(
      offerOneTabContainerModelObj:
          offerOneTabContainerModelObj ?? this.offerOneTabContainerModelObj,
    );
  }
}
