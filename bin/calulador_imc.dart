import 'dart:io';
import 'user/user.dart';
import 'user/user_utils.dart';

void main(List<String> arguments) {
  try {
    print("Qual seu nome?");
    String? name = stdin.readLineSync();
    if (name == null) {
      throw Exception("Erro ao receber as informações");
    }

    print("Qual a sua altura?");
    String? height = stdin.readLineSync();
    if (UserUtils.isNumeric(height)) {
      throw Exception("Altura deve ser um número e não pode ser vazio");
    }

    print("Qual o seu peso?");
    String? weight = stdin.readLineSync();
    if (UserUtils.isNumeric(weight)) {
      throw Exception("Peso deve ser um número e não pode ser vazio");
    }

    User user = User(name: name, height: double.parse(height!), weight: double.parse(weight!));

    print(UserUtils.imcResult(user.calculateIMC()));
  } catch (e) {
    print("Erro: $e");
  }
}
