void main(List<String> args) {
  String? mesaj = null;
  // mesaj = "merhaba";

  print("yöntem 1 : ${mesaj?.toUpperCase()}");

  // print("yöntem 2 : ${mesaj!.toUpperCase()}");

  if (mesaj != null) {
    print("Yöntem 3 : ${mesaj.toUpperCase()}");
  } else {
    print("Mesaj null'dır");
  }
}
