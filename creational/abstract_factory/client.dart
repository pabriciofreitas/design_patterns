import 'data/model/service.dart';
import 'data/services_abstract_factory.dart';

void main() {
  Service servico = ServiceAbstractFactory.getRestService();
  print(servico.userService.save());
}
