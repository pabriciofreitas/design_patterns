import '../infra/ejb/user_ejb_service.dart';
import '../infra/rest/user_rest_service.dart';
import 'user_service.dart';

abstract class UserAbstractFactory {
  static UserService getEJBService() {
    return new UserEJBService();
  }

  static UserService getRestService() {
    return new UserRestService();
  }
}
