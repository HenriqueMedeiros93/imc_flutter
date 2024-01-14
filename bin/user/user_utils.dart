class UserUtils{
static bool isNumeric(String? valor){
  if(valor == null || valor.isEmpty){
    return false;
  }
  RegExp regex = RegExp(r'^[0-9]+(\.[0-9]+)?$');
  return !regex.hasMatch(valor);
}

  static imcResult(double imc){
    if(imc < 16){
      return "magreza grave";
    }else if(imc >= 16 && imc < 17){
      return "magreza moderada";
    }else if(imc >= 17 && imc < 18.5){
      return "magreza leve";
    }else if(imc >= 18.5 && imc < 25){
      return "saudável";
    }else if(imc >= 25 && imc < 30){
      return "Sobrepeso";
    }else if(imc >= 30 && imc < 35){
      return "Obesidade grau 1";
    }else if(imc >= 35 && imc < 40){
      return "Obesidade grau 2(severa)";
    }else{
      return "Obesidade grau 3(mórbida)";
    }
  }
}