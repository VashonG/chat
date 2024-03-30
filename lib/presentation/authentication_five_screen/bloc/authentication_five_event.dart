// ignore_for_file: must_be_immutable

part of 'authentication_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AuthenticationFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AuthenticationFiveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AuthenticationFive widget is first created.
class AuthenticationFiveInitialEvent extends AuthenticationFiveEvent {
  @override
  List<Object?> get props => [];
}
