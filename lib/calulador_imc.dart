

bool isNumeric(){
  String valor = "1.79";
  RegExp regex = RegExp(r'^[0-9]+(\.[0-9]+)?$');
  return regex.hasMatch(valor);
}

bool notIsNumeric(){
  String valor = "carlos";
  RegExp regex = RegExp(r'^[0-9]+(\.[0-9]+)?$');
  return regex.hasMatch(valor);
}
