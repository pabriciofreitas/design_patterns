import 'package:flutter/material.dart';
import 'package:flutter_state/controller/controller_state.dart';
import 'package:flutter_state/controller/icontroller_state.dart';

import 'loading_state.dart';

//carregado
class LoadedState implements IControllerState {
  final List<String> names;

  const LoadedState(this.names);

  @override
  Future nextState(ControllerState context) async {
    context.setState(LoadingState());
  }

  @override
  Widget render() {
    return Column(
      children: names
          .map(
            (name) => Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.white,
                  child: Text(name[0]),
                ),
                title: Text(name),
              ),
            ),
          )
          .toList(),
    );
  }
}
