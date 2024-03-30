import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:carat_card/presentation/dashboard_one_container_screen/models/dashboard_one_container_model.dart';part 'dashboard_one_container_event.dart';part 'dashboard_one_container_state.dart';/// A bloc that manages the state of a DashboardOneContainer according to the event that is dispatched to it.
class DashboardOneContainerBloc extends Bloc<DashboardOneContainerEvent, DashboardOneContainerState> {DashboardOneContainerBloc(DashboardOneContainerState initialState) : super(initialState) { on<DashboardOneContainerInitialEvent>(_onInitialize); }

_onInitialize(DashboardOneContainerInitialEvent event, Emitter<DashboardOneContainerState> emit, ) async  {  } 
 }
