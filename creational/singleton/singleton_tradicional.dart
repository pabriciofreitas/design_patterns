import 'estado.dart';

class SingletonTradicional extends Estado {
  static SingletonTradicional? _instance;

  SingletonTradicional._internal() {
    textoInicial = "Texto inicial 'SingletonTradicional' ";
    textoAtual = textoInicial;
  }

  static SingletonTradicional getInstance() {
    // return _instance ??= SingletonTradicional._internal();
    if (_instance == null) {
      _instance = SingletonTradicional._internal();
    }
    return _instance!;
  }
}
