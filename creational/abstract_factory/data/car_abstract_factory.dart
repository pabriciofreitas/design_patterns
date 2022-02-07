import '../infra/ejb/car_ejb_service.dart';
import '../infra/rest/car_rest_service.dart';
import 'car_service.dart';

abstract class CarAbstractFactory {
  static CarService getEJBService() {
    return CarEJBService();
  }

  static CarService getRestService() {
    return CarRestService();
  }
}
