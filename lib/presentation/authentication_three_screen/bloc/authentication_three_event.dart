// ignore_for_file: must_be_immutable

part of 'authentication_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AuthenticationThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AuthenticationThreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AuthenticationThree widget is first created.
class AuthenticationThreeInitialEvent extends AuthenticationThreeEvent {
  @override
  List<Object?> get props => [];
}
