import 'state_water.dart';

abstract class InterfaceStateWater {
  String getCurrentState();
  setStateWater({required StateWater context, required String state});
}
