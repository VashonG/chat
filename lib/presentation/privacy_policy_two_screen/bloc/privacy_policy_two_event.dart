// ignore_for_file: must_be_immutable

part of 'privacy_policy_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PrivacyPolicyTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PrivacyPolicyTwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PrivacyPolicyTwo widget is first created.
class PrivacyPolicyTwoInitialEvent extends PrivacyPolicyTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends PrivacyPolicyTwoEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
