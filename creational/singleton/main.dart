import 'sem_singleton.dart';

//https://medium.com/flutter-community/flutter-design-patterns-1-singleton-437f04e923ce
void main() {
  //exemplo sem Singleton
  final a = SemSingleton();
  a.textoAtual = "mudado";
  print(a.textoAtual);

  final b = SemSingleton();
  print(b.textoAtual);
}

// void main() {
//   //exemplo com Singleton tradicional
//   final a = SingletonTradicional.getInstance();
//   a.textoAtual = "mudado";
//   print(a.textoAtual);

//   final b = SingletonTradicional.getInstance();
//   print(b.textoAtual);
// }

// void main() {
//   //exemplo Singleton do jeitinho dart 
//   final a = Singleton();
//   a.textoAtual = "mudado";
//   print(a.textoAtual);

//   final b = Singleton();
//   print(b.textoAtual);
// }

