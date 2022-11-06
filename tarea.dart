void main() {
  fibonacci(12);
  fibonacci(12);

  final coche1 = coche(4, "OLB4F", 2, 2);
  print(coche1.comparar_numero_llantas(4));

  coche1.contar_llantas();

  print("Total pasajeros: ${coche1.suma_pasajeros()}");

  coche1.mostrar_placa();
}

void fibonacci(int i) {
  int num1 = 0;
  int num2 = 1;
  int num3 = 0;
  print("0: ${num2}");

  for (int j = 1; j < i; j++) {
    num3 = num1 + num2;
    num1 = num2;
    num2 = num3;
    print("${j}: ${num3}");
  }
}

class coche {
  int numero_llantas = 0;
  String placa = "";
  int pasajeros_adelante = 0;
  int pasajeros_atras = 0;

  coche(this.numero_llantas, this.placa, this.pasajeros_adelante,
      this.pasajeros_atras);

  String comparar_numero_llantas(int llantas) {
    if (this.numero_llantas == llantas) {
      return "Coinciden";
    } else {
      return "No Coinciden";
    }
  }

  void contar_llantas() {
    for (int i = 1; i <= this.numero_llantas; i++) {
      print("Llantas: ${i}");
    }
  }

  int suma_pasajeros() {
    return this.pasajeros_adelante + pasajeros_atras;
  }

  void mostrar_placa() {
    for (int i = 0; i < this.placa.length; i++) {
      print(this.placa[i]);
    }
  }
}
