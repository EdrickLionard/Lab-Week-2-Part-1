import 'dart:io';

void main() {
  print('Masukkan suhu dalam Celcius:');
  double celcius = double.parse(stdin.readLineSync()!);

  print(
      'Pilih konversi: (R untuk Reaumur, F untuk Fahrenheit, K untuk Kelvin)');
  String choice = stdin.readLineSync()!.toUpperCase();

  if (choice == 'R') {
    double reaumur = celcius * 4 / 5;
    print('$celcius°C = $reaumur°Reaumur');
  } else if (choice == 'F') {
    double fahrenheit = (celcius * 9 / 5) + 32;
    print('$celcius°C = $fahrenheit°Fahrenheit');
  } else if (choice == 'K') {
    double kelvin = celcius + 273.15;
    print('$celcius°C = $kelvin°Kelvin');
  } else {
    print('Pilhan tidak valid');
  }
}
