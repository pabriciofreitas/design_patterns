import '../../data/user_service.dart';

class UserRestService implements UserService {
  @override
  String delete() {
    return "Deletando usuário pelo serviço user Rest";
  }

  @override
  String save() {
    return "Salvando usuário pelo serviço user Rest";
  }
}
