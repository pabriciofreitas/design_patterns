import 'package:flutter/material.dart';
import 'package:flutter_state/controller/icontroller_state.dart';

import '../../infra/fake_api.dart';
import 'error_state.dart';
import 'loaded_state.dart';
import 'no_results_state.dart';

class LoadingState implements IControllerState {
  final FakeApi _api = FakeApi();

  @override
  Future nextState(context) async {
    try {
      final resultList = await _api.getNames();

      if (resultList.isEmpty) {
        context.setState(NoResultsState());
      } else {
        context.setState(LoadedState(resultList));
      }
    } on Exception {
      context.setState(ErrorState());
    }
  }

  @override
  Widget render() {
    return const CircularProgressIndicator(
      backgroundColor: Colors.transparent,
      valueColor: AlwaysStoppedAnimation<Color>(
        Colors.black,
      ),
    );
  }
}
