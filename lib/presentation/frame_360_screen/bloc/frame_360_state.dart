// ignore_for_file: must_be_immutable

part of 'frame_360_bloc.dart';

/// Represents the state of Frame360 in the application.
class Frame360State extends Equatable {
  Frame360State({this.frame360ModelObj});

  Frame360Model? frame360ModelObj;

  @override
  List<Object?> get props => [
        frame360ModelObj,
      ];

  Frame360State copyWith({Frame360Model? frame360ModelObj}) {
    return Frame360State(
      frame360ModelObj: frame360ModelObj ?? this.frame360ModelObj,
    );
  }
}
