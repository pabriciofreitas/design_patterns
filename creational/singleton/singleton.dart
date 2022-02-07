import 'estado.dart';

class Singleton extends Estado {
  static final Singleton _instance = Singleton._internal();
  //Esse factory é responsável por criar um única instancia da class
  factory Singleton() {
    return _instance;
  }
  Singleton._internal() {
    textoInicial = "Texto inicial 'Singleton estilo Dart' ";
    textoAtual = textoInicial;
  }
}
