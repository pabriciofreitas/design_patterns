import 'inferface_state_water.dart';
import 'states/stateless_water.dart';

class StateWater {
  late InterfaceStateWater _state;
  StateWater() {
    _state = setState(StatelessWater());
  }
  setState(InterfaceStateWater state) => _state = state;

  void setStateWater({required String state}) {
    _state.setStateWater(context: this, state: state);
  }

  void getCurrentState() {
    print(_state.getCurrentState());
  }
}
