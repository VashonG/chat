// ignore_for_file: must_be_immutable

part of 'porfile_one_bloc.dart';

/// Represents the state of PorfileOne in the application.
class PorfileOneState extends Equatable {
  PorfileOneState({
    this.helpvalueoneController,
    this.porfileOneModelObj,
  });

  TextEditingController? helpvalueoneController;

  PorfileOneModel? porfileOneModelObj;

  @override
  List<Object?> get props => [
        helpvalueoneController,
        porfileOneModelObj,
      ];

  PorfileOneState copyWith({
    TextEditingController? helpvalueoneController,
    PorfileOneModel? porfileOneModelObj,
  }) {
    return PorfileOneState(
      helpvalueoneController:
          helpvalueoneController ?? this.helpvalueoneController,
      porfileOneModelObj: porfileOneModelObj ?? this.porfileOneModelObj,
    );
  }
}
