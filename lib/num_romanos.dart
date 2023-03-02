final Map<int, String> map = {1:"I", 2:"II", 3:"III", 4:"IV", 5:"V", 6:"VI", 7:"VII", 8:"VIII", 9:"IX", 10:"X", 20:"XX",
            30:"XXX", 40:"XL",50:"L", 60:"LX", 70:"LXX", 80:"LXXX", 90:"XC", 100:"C", 200:"CC", 300:"CCC",
            400:"CD", 500:"D"};

String regresarRepresentacion(int valor){
    String valor_str = valor.toString();
    if(valor_str.length == 1){
      return representarUnidades(valor);
    }
    if(valor_str.length == 2){
      return representarDecenas(valor_str);
    }
    return "";
}
String representarDecenas(String valor){
    List<String> divisionLetras = valor.split("");
    String decena ="${divisionLetras[0]}0";
    String representacionDecena = map[int.parse(decena)]!;
    String representacionUnidad = representarUnidades(int.parse(divisionLetras[1]));
    return representacionDecena + representacionUnidad;
}

String representarUnidades(int valor){
    if(valor == 0) return "";
    String representacion = map[valor]!;
    return representacion;
}
