import 'estado.dart';

class SemSingleton extends Estado {
  SemSingleton() {
    textoInicial = "Texto inicial 'Sem Singleton'";
    textoAtual = textoInicial;
  }
}
