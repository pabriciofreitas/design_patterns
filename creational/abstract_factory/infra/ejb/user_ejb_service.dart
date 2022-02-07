import '../../data/user_service.dart';

class UserEJBService implements UserService {
  @override
  String delete() {
    return "Deletando usuário pelo serviço user EJB";
  }

  @override
  String save() {
    return "Salvando usuário pelo serviço user EJB";
  }
}
