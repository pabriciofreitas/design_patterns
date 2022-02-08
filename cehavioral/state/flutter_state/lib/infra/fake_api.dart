import 'dart:math';

class FakeApi {
  var random = Random();
  Future<List<String>> getNames() async {
    return Future.delayed(
      const Duration(seconds: 2),
      () {
        if (random.nextBool()) {
          return _getRandomNames();
        }

        throw Exception('Erro inesperado');
      },
    );
  }

  List<String> _getRandomNames() {
    if (random.nextBool()) {
      return [];
    }

    return [
      ' Ana',
      "Analice",
      "Anildo",
    ];
  }
}
