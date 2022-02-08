import 'dart:async';

import 'package:flutter_state/controller/states/loading_state.dart';

import 'icontroller_state.dart';
import 'states/no_results_state.dart';

class ControllerState {
  final _stateStream = StreamController<IControllerState>();
  //Uma lista de Stream      //no estado
  Sink<IControllerState> get _inState => _stateStream.sink;
  //fluxo de dado             //sem estado
  Stream<IControllerState> get outState => _stateStream.stream;

  late IControllerState _currentState;

  ControllerState() {
    _currentState = NoResultsState();
    _addCurrentStateToStream();
  }

  void _addCurrentStateToStream() {
    _inState.add(_currentState);
  }

  void setState(IControllerState state) {
    _currentState = state;
    _addCurrentStateToStream();
  }

  Future<void> nextState() async {
    await _currentState.nextState(this);

    if (_currentState is LoadingState) {
      await _currentState.nextState(this);
    }
  }
}
