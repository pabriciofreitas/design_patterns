import '../inferface_state_water.dart';
import '../state_water.dart';
import 'gas_state_water.dart';
import 'liquid_state_water.dart';
import 'solid_state_water.dart';

class StatelessWater implements InterfaceStateWater {
  @override
  String getCurrentState() {
    return "sem estado";
  }

  @override
  setStateWater({required StateWater context, required String state}) {
    if (state == this.getCurrentState()) {
      print("Você já está no estado ${this.getCurrentState()}");
    } else if (state == "gasoso") {
      print("Você mudou de ${this.getCurrentState()} para $state");
      context.setState(GasStateWater());
    } else if (state == "solido") {
      print("Você mudou de ${this.getCurrentState()} para $state");
      context.setState(SolidStateWater());
    } else if (state == "liquido") {
      print("Você mudou de ${this.getCurrentState()} para $state");
      context.setState(LiquidStateWater());
    } else {
      print("estado não reconhecido");
    }
  }
}
