import 'package:flutter/widgets.dart';

import 'controller_state.dart';

abstract class IControllerState {
  Future nextState(ControllerState context);
  Widget render();
}
