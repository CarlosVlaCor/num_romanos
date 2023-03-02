import 'package:num_romanos/num_romanos.dart';
import 'package:test/test.dart';
import 'package:collection/collection.dart';

Function comparacionArreglos = const ListEquality().equals;
void main() {
  test('Cuando el numero sea 8', () {
    String representacion = regresarRepresentacion(8);
    expect(representacion, "VIII");
  });

  test('Cuando el numero sea 99', () {
    String representacion = regresarRepresentacion(99);
    expect(representacion, "XCIX");
  });

  test('Cuando el numero sea 106', () {
    String representacion = regresarRepresentacion(500);
    expect(representacion, "D");
  });

  test('Cuando el intervalo sea de 500', () {
    String representacion = regresarRepresentacion(500);
    expect(representacion, "D");
  });

  test('Cuando los valores sean unidades', (){
    final List<String> resultadoEsperado = ["I","II","III","IV","V", "VI", "VII","VIII", "IX"];
    List<String> resultado = listaEnUnidades();
    expect(comparacionArreglos(resultadoEsperado, resultado),true);
  });

  test('Cuando los valores sean decenas', (){
    final List<String> resultadoEsperado = ["X","XX","XXX","XL","L", "LX", "LXX","LXXX", "XC"];
    List<String> resultado = listaEnDecenas();
    expect(comparacionArreglos(resultadoEsperado, resultado),true);
  });

  test('Cuando los valores sean centenas', (){
    final List<String> resultadoEsperado = ["C","CC","CCC","CD","D"];
    List<String> resultado = listaEnCentenas();
    expect(comparacionArreglos(resultadoEsperado, resultado),true);
  });

}

List<String> listaEnUnidades(){
    final List<int> listaUnidades = [1,2,3,4,5,6,7,8,9];
    List<String> resultado = []; 
    for(var i = 0; i < listaUnidades.length; i++){
      resultado.add(regresarRepresentacion(listaUnidades[i]));
    }
    return resultado;
}

List<String> listaEnDecenas(){
    final List<int> listaDecenas = [10,20,30,40,50,60,70,80,90];
    List<String> resultado = []; 
    for(var i = 0; i < listaDecenas.length; i++){
      resultado.add(regresarRepresentacion(listaDecenas[i]));
    }
    return resultado;
}

List<String> listaEnCentenas(){
    final List<int> listaCentenas = [100,200,300,400,500];
    List<String> resultado = []; 
    for(var i = 0; i < listaCentenas.length; i++){
      resultado.add(regresarRepresentacion(listaCentenas[i]));
    }
    return resultado;
}