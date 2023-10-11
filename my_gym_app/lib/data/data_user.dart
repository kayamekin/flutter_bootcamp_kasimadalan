class DataUser {
  int id;
  String name;
  String surname;
  String dayPlan;
  String imagePath;

  DataUser({
    required this.id,
    required this.name,
    required this.surname,
    required this.dayPlan,
    required this.imagePath,
  });
}

DataUser user1 = DataUser(
    id: 123456,
    name: "Kaya Mekin",
    surname: "Baturalp",
    dayPlan: 'CHEST (Göğüs)',
    imagePath: "assets/images/img2.jpg");

List<DataUser> users = [
  DataUser(
    id: 123456,
    name: "Kaya Mekin",
    surname: "Baturalp",
    dayPlan: 'CHEST (Göğüs)',
    imagePath: "assets/images/img2.jpg",
  ),
  // Diğer kullanıcıları burada ekleyebilirsiniz
];
