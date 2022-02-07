import 'car_abstract_factory.dart';
import 'model/service.dart';
import 'user_abstract_factory.dart';

abstract class ServiceAbstractFactory {
  static Service getEJBService() {
    return Service(
        userService: UserAbstractFactory.getEJBService(),
        carService: CarAbstractFactory.getEJBService());
  }

//UserEJBService()
  static Service getRestService() {
    return Service(
        userService: UserAbstractFactory.getRestService(),
        carService: CarAbstractFactory.getRestService());
  }
}
