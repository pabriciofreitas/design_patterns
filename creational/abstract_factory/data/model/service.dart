import '../car_service.dart';
import '../user_service.dart';

class Service {
  final UserService userService;
  final CarService carService;
  Service({
    required this.userService,
    required this.carService,
  });
}
