import 'package:flutter/material.dart';
import 'package:flutter_state/controller/icontroller_state.dart';

import '../controller_state.dart';
import 'loading_state.dart';

class ErrorState implements IControllerState {
  @override
  Future nextState(ControllerState context) async {
    context.setState(LoadingState());
  }

  @override
  Widget render() {
    return const Text(
      'Opa! Algo deu errado...',
      style: TextStyle(
        color: Colors.red,
        fontSize: 24.0,
      ),
      textAlign: TextAlign.center,
    );
  }
}
