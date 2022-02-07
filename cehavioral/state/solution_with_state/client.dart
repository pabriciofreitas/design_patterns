import 'state_water.dart';

void main() {
  final water = StateWater();
  water.getCurrentState();
  water.setStateWater(state: "solido");
  water.setStateWater(state: "gasoso");
  water.getCurrentState();
}
