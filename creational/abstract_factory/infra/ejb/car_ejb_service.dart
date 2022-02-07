import '../../data/car_service.dart';

class CarEJBService implements CarService {
  @override
  String save() {
    return "Salvando pelo serviço car EJB";
  }

  @override
  String update() {
    return "Atualizando pelo serviço car EJB";
  }
}
