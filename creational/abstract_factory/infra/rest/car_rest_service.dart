import '../../data/car_service.dart';

class CarRestService implements CarService {
  @override
  String save() {
    return "Salvando pelo serviço car Rest";
  }

  @override
  String update() {
    return "Atualizando pelo serviço car Rest";
  }
}
