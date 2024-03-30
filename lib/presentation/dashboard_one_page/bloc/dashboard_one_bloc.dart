import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/usersubscriptio_item_model.dart';import 'package:carat_card/presentation/dashboard_one_page/models/dashboard_one_model.dart';part 'dashboard_one_event.dart';part 'dashboard_one_state.dart';/// A bloc that manages the state of a DashboardOne according to the event that is dispatched to it.
class DashboardOneBloc extends Bloc<DashboardOneEvent, DashboardOneState> {DashboardOneBloc(DashboardOneState initialState) : super(initialState) { on<DashboardOneInitialEvent>(_onInitialize); }

_onInitialize(DashboardOneInitialEvent event, Emitter<DashboardOneState> emit, ) async  { emit(state.copyWith(dashboardOneModelObj: state.dashboardOneModelObj?.copyWith(usersubscriptioItemList: fillUsersubscriptioItemList()))); } 
List<UsersubscriptioItemModel> fillUsersubscriptioItemList() { return List.generate(3, (index) => UsersubscriptioItemModel()); } 
 }
