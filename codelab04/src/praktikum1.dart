void main() {
  final List<String?> list = List<String?>.filled(5, null);

  list[1] = "AJULUMEL";
  list[2] = "2341720118";  

  assert(list.length == 5);
  print("Panjang list: ${list.length}");
  
  assert(list[1] == "Nama Anda");
  assert(list[2] == "NIM Anda");
  print("Index 1: ${list[1]}");
  print("Index 2: ${list[2]}");
}
