import 'package:num_romanos/num_romanos.dart';
import 'package:test/test.dart';

void main() {
  test('Cuando el numero sea 8', () {
    String representacion = regresarRepresentacion(8);
    expect(representacion, "VIII");
  });

  test('Cuando el numero sea 99', () {
    String representacion = regresarRepresentacion(99);
    expect(representacion, "XCIX");
  });

}
