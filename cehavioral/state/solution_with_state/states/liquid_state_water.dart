import '../inferface_state_water.dart';
import '../state_water.dart';
import 'solid_state_water.dart';
import 'stateless_water.dart';

class LiquidStateWater implements InterfaceStateWater {
  @override
  String getCurrentState() {
    return "liquido";
  }

  @override
  setStateWater({required StateWater context, required String state}) {
    if (state == this.getCurrentState()) {
      print("Você já está no estado ${this.getCurrentState()}");
    } else if (state == "sem estado") {
      print("Você mudou de ${this.getCurrentState()} para $state");
      context.setState(StatelessWater());
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
