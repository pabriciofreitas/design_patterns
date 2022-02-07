void main() {
  final a = EstadoDaAgua(estado: "solido");
  a.toGasoso();
}

class EstadoDaAgua {
  String _estado;
  EstadoDaAgua({
    required String estado,
  }) : _estado = estado;

  toLiquido() {
    if (_estado == "liquido") {
      print("O estado já é liquido");
    } else {
      print("$_estado mundou para liquido");
      _estado = "liquido";
    }
  }

  toSolido() {
    if (_estado == "solido") {
      print("O estado já é solido");
    } else if (_estado == "gasoso") {
      print("Não é permitido muda do gasoso para solido");
    } else {
      print("$_estado mundou para solido");
    }
  }

  toGasoso() {
    if (_estado == "gasoso") {
      print("O estado já é gasoso");
    } else if (_estado == "solido") {
      print("Não é permitido muda do solido para gasoso");
    } else {
      print("$_estado mundou para gasoso");
    }
  }
}
