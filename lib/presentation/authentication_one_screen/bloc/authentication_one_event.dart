// ignore_for_file: must_be_immutable

part of 'authentication_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AuthenticationOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AuthenticationOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AuthenticationOne widget is first created.
class AuthenticationOneInitialEvent extends AuthenticationOneEvent {
  @override
  List<Object?> get props => [];
}
