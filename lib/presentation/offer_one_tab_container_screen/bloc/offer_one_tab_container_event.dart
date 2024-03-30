// ignore_for_file: must_be_immutable

part of 'offer_one_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OfferOneTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OfferOneTabContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the OfferOneTabContainer widget is first created.
class OfferOneTabContainerInitialEvent extends OfferOneTabContainerEvent {
  @override
  List<Object?> get props => [];
}
