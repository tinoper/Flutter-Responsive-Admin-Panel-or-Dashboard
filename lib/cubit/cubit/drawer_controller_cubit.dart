import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class DrawerControllerCubit extends Cubit<GlobalKey<ScaffoldState>> {
  DrawerControllerCubit() : super(GlobalKey<ScaffoldState>());

  void openDrawer() {
    state.currentState?.openDrawer();
  }
}
