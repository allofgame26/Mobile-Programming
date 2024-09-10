import 'package:pertemuan3/pertemuan3.dart' as pertemuan3;

void main() {
  // "Praktikum 1"

  // Langkah 1
  // String test = "test2";
  // if (test == "test1") {
  //   print("Test 1");
  // } else if (test == "test2") {
  //   print("Test 2");
  // } else {
  //   print("Something Else");
  // }

  // if (test == "test2") print("Test 2 again");

  // langkah 3

  // String test = "true";
  // if (test == "true") {
  //   print("Kebenaran");
  // }

  //Praktikum 2

  //langkah 1

  // int counter = 0; //insialisasi variabel

  // while (counter < 33) {
  //   print(counter);
  //   counter++;
  // }

  //langkah 3

  // do {
  //   print(counter);
  //   counter++;
  // } while (counter < 77);

  //Praktikum 3

  //Langkah 1

  // for (int Index = 10; Index < 27; Index++) {
  //   print(Index);
  // }

  //langkah 3
  // for (int Index = 0; Index < 27; Index++) {
  //   if (Index == 21) {
  //     break;
  //   } else if (Index > 1 && Index < 7) {
  //     continue;
  //   }
  //   print(Index);
  // }

  // Tugas Praktikum

  String namaLengkap = 'Rizki Arya Prayoga';
  String nim = '2141762051';

  print('Bilangan prima dari 0 sampai 201:');
  for (int i = 0; i <= 201; i++) {
    if (isPrime(i)) {
      print('$i adalah bilangan prima. Nama: $namaLengkap, NIM: $nim');
    }
  }
}

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
