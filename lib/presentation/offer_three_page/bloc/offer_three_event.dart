// ignore_for_file: must_be_immutable

part of 'offer_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OfferThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OfferThreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the OfferThree widget is first created.
class OfferThreeInitialEvent extends OfferThreeEvent {
  @override
  List<Object?> get props => [];
}
