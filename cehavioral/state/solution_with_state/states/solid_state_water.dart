import '../inferface_state_water.dart';
import '../state_water.dart';
import 'liquid_state_water.dart';
import 'stateless_water.dart';

class SolidStateWater implements InterfaceStateWater {
  @override
  String getCurrentState() {
    return "solido";
  }

  @override
  setStateWater({required StateWater context, required String state}) {
    if (state == this.getCurrentState()) {
      print("Você já está no estado ${this.getCurrentState()}");
    } else if (state == "sem estado") {
      print("Você mudou de ${this.getCurrentState()} para $state");
      context.setState(StatelessWater());
    } else if (state == "gasoso") {
      print("Você não pode mudar de ${this.getCurrentState()} para $state");
    } else if (state == "liquido") {
      print("Você mudou de ${this.getCurrentState()} para $state");
      context.setState(LiquidStateWater());
    } else {
      print("estado não reconhecido");
    }
  }
}
