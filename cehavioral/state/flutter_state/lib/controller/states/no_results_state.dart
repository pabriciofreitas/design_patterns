import 'package:flutter/material.dart';
import 'package:flutter_state/controller/controller_state.dart';
import 'package:flutter_state/controller/icontroller_state.dart';

import 'loading_state.dart';

class NoResultsState implements IControllerState {
  @override
  Future nextState(ControllerState context) async {
    context.setState(LoadingState());
  }

  @override
  Widget render() {
    return const Text(
      'No Results',
      style: TextStyle(fontSize: 24.0),
      textAlign: TextAlign.center,
    );
  }
}
