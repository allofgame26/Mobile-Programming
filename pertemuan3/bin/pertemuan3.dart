import 'package:pertemuan3/pertemuan3.dart' as pertemuan3;
import 'dart:io';

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

  // String namaLengkap = 'Rizki Arya Prayoga';
  // String nim = '2141762051';

  // print('Bilangan prima dari 0 sampai 201:');
  // for (int i = 0; i <= 201; i++) {
  //   if (isPrime(i)) {
  //     print('$i adalah bilangan prima. Nama: $namaLengkap, NIM: $nim');
  //   }
  // }

  //Studi Kasus Kalkulator IPK

// Input jumlah semester
  // stdout.write('Masukkan jumlah semester: ');
  // int? jumlahSemester = int.parse(stdin.readLineSync()!);

  // double totalSks = 0; // Total SKS seluruh semester
  // double totalNilai =
  //     0; // Total nilai yang diakumulasi berdasarkan IPK per semester

  // for (int i = 1; i <= jumlahSemester!; i++) {
  //   stdout.write('Masukkan jumlah SKS semester $i: ');
  //   double? sks = double.parse(stdin.readLineSync()!);

  //   stdout.write('Masukkan IPK semester $i: ');
  //   double? ipkSemester = double.parse(stdin.readLineSync()!);

  //   totalSks += sks;
  //   totalNilai +=
  //       ipkSemester * sks; // Mengalikan IPK dengan SKS semester tersebut
  // }

  // // Menghitung IPK Kumulatif
  // double ipkKumulatif = totalNilai / totalSks;

  // // Menampilkan hasil IPK Kumulatif
  // print('\nTotal SKS: $totalSks');
  // print('IPK Kumulatif Anda: ${ipkKumulatif.toStringAsFixed(2)}');

  // C++ to Dart

  int i, j, nilai, jmlsmt, jmlmk = 0, jumlahnilai, jumlahsks, totalsks = 0;
  List<List<int>> sks = List.generate(50, (index) => List.filled(30, 0));
  List<String> nilaihuruf = List.filled(50, '');
  List<List<String>> matkul = List.generate(50, (index) => List.filled(30, ''));
  List<double> nr = List.filled(14, 0.0);
  List<int> skssmt = List.filled(14, 0);
  double totalnr = 0.0, ipk;

  print("==============================================");
  print("\tProgram Menghitung IPK Mahasiswa");
  print("==============================================");

  // Input jumlah semester
  stdout.write("Masukkan jumlah semester: ");
  jmlsmt = int.parse(stdin.readLineSync()!);

  // Validasi jumlah semester
  if (jmlsmt < 2 || jmlsmt > 14) {
    print("Jumlah semester salah!");
    return;
  } else {
    for (i = 0; i < jmlsmt; i++) {
      jumlahnilai = 0;
      jumlahsks = 0;

      // Input jumlah mata kuliah per semester
      stdout.write("Masukkan jumlah mata kuliah semester ${i + 1}: ");
      jmlmk = int.parse(stdin.readLineSync()!);

      // Validasi jumlah mata kuliah
      if (jmlmk < 2) {
        print("Jumlah matakuliah kurang dari 2 setiap semester");
        return;
      } else {
        for (j = 0; j < jmlmk; j++) {
          stdout.write("Masukkan mata kuliah ke ${j + 1}: ");
          stdout.write("Masukkan nama matkul: ");
          matkul[i][j] = stdin.readLineSync()!;

          stdout.write("Masukkan jumlah sks matkul: ");
          sks[i][j] = int.parse(stdin.readLineSync()!);

          stdout.write("Masukkan nilai matkul (A/B/C/D/E): ");
          nilaihuruf[i] = stdin.readLineSync()!;

          // Konversi nilai huruf ke angka
          if (nilaihuruf[i] == 'A') {
            nilai = 4 * sks[i][j];
          } else if (nilaihuruf[i] == 'B') {
            nilai = 3 * sks[i][j];
          } else if (nilaihuruf[i] == 'C') {
            nilai = 2 * sks[i][j];
          } else if (nilaihuruf[i] == 'D') {
            nilai = 1 * sks[i][j];
          } else if (nilaihuruf[i] == 'E') {
            nilai = 0 * sks[i][j];
          } else {
            print("Input nilai huruf salah!");
            return;
          }

          // Akumulasi nilai dan SKS
          jumlahnilai += nilai;
          jumlahsks += sks[i][j];
        }

        // Validasi jumlah SKS per semester
        if (jumlahsks > 24) {
          print("Jumlah SKS semester lebih dari 24");
          return;
        } else {
          skssmt[i] = jumlahsks;
          nr[i] = jumlahnilai / jumlahsks;
        }
      }
    }
  }

  // Menampilkan hasil
  print("==============================================");
  print("\t\tTranskrip Nilai");
  print("==============================================");

  for (i = 0; i < jmlsmt; i++) {
    print("\nHasil Semester ${i + 1}:\n");
    print("${"Mata Kuliah".padRight(15)} ${"SKS".padRight(10)} ${"Nilai"}");

    for (j = 0; j < jmlmk; j++) {
      print(
          "${matkul[i][j].padRight(15)} ${sks[i][j].toString().padRight(10)} ${nilaihuruf[i]}");
    }

    print("\nSKS: ${skssmt[i]}");
    print("NR: ${nr[i].toStringAsFixed(2)}");
    totalsks += skssmt[i];
    totalnr += nr[i];
    print("--------------------------------------------");
  }

  ipk = totalnr / jmlsmt;
  print("\nTotal SKS: $totalsks");
  print("IPK: ${ipk.toStringAsFixed(2)}");
  print("==============================================");
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
