// ignore_for_file: must_be_immutable

part of 'offer_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OfferTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OfferTwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the OfferTwo widget is first created.
class OfferTwoInitialEvent extends OfferTwoEvent {
  @override
  List<Object?> get props => [];
}
