import 'package:calulador_imc/calulador_imc.dart';
import 'package:test/test.dart';

void main() {
  test('isNumeric', () {
    expect(isNumeric(), true);
  });

  test('notIsNumeric', () {
    expect(notIsNumeric(), false);
  });
}
