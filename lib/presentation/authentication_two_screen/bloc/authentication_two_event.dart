// ignore_for_file: must_be_immutable

part of 'authentication_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AuthenticationTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AuthenticationTwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AuthenticationTwo widget is first created.
class AuthenticationTwoInitialEvent extends AuthenticationTwoEvent {
  @override
  List<Object?> get props => [];
}
