import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:carat_card/presentation/dashboard_tab_container_screen/models/dashboard_tab_container_model.dart';part 'dashboard_tab_container_event.dart';part 'dashboard_tab_container_state.dart';/// A bloc that manages the state of a DashboardTabContainer according to the event that is dispatched to it.
class DashboardTabContainerBloc extends Bloc<DashboardTabContainerEvent, DashboardTabContainerState> {DashboardTabContainerBloc(DashboardTabContainerState initialState) : super(initialState) { on<DashboardTabContainerInitialEvent>(_onInitialize); }

_onInitialize(DashboardTabContainerInitialEvent event, Emitter<DashboardTabContainerState> emit, ) async  {  } 
 }
