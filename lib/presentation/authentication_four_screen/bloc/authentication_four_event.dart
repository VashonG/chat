// ignore_for_file: must_be_immutable

part of 'authentication_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AuthenticationFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AuthenticationFourEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AuthenticationFour widget is first created.
class AuthenticationFourInitialEvent extends AuthenticationFourEvent {
  @override
  List<Object?> get props => [];
}
