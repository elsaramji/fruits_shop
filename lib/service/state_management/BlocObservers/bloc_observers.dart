// service/state/BlocObservers/bloc_observers.dart

import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class BlocObserverImpl extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('${bloc.runtimeType} $change');
  }
}
