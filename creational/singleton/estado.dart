abstract class Estado {
  late final String textoInicial;

  late String textoAtual;

  void reset() {
    textoAtual = textoInicial;
  }
}
