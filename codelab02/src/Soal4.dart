void main() {
  // Null Safety
  String? nama; // Bisa null
  nama = null; // Tidak error
  print(nama); // Output: null

  String alamat = "Malang"; // Tidak bisa null

  // Late Variable
  late String pesan;
  pesan = "Halo, AJULUMEL!";
  print(pesan); // Output: Halo, AJULUMEL!
}