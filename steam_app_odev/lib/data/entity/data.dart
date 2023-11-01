class GamesArea {
  int id;
  String name;
  String image;
  String description;
  String systemRequirements;
  double price;
  double points;
  bool buyActive;
  bool bestSeller;
  int commentQuantity;

  GamesArea({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.systemRequirements,
    required this.price,
    required this.points,
    required this.buyActive,
    required this.bestSeller,
    required this.commentQuantity,
  });
}

var gameLists = <GamesArea>[];

Future<List<GamesArea>> gamesListUpload() async {
  gameLists.clear();

  var g1 = GamesArea(
      id: 1,
      name: "destiny",
      image: "assets/images/destiny.jpg",
      description:
          "Destiny 2'nun dünyasına dalıp güneş sisteminin gizemlerini keşfet ve etkileyici bir FPS deneyimi edin. Güçlü elementsel becerileri aç ve Gardiyanının görünüşünü ve oynayış tarzını özelleştirmek için benzersiz teçhizatlar topla. Destiny 2'nin sinematik hikayesinin, zorlu iş birliği görevlerinin ve çeşitli PvP modlarının keyfini ister arkadaşlarınla ister tek başına çıkar. Hemen ücretsiz olarak indir ve yıldızlara kendi efsaneni yaz.",
      systemRequirements: '''- 64-bit işlemci ve işletim sistemi gerektirir
- İşletim Sistemi: Windows® 7 / Windows® 8.1 / Windows® 10 64-bit (latest Service Pack)
- İşlemci: Intel® Core™ i3 3250 3.5 GHz or Intel Pentium G4560 3.5 GHz / AMD FX-4350 4.2 GHz
- Bellek: 6 GB RAM
- Ekran Kartı: NVIDIA® GeForce® GTX 660 2GB or GTX 1050 2GB / AMD Radeon HD 7850 2GB
- Ağ: Genişbant İnternet bağlantısı
- Depolama: 105 GB kullanılabilir alan''',
      price: 1234,
      points: 4.4,
      buyActive: true,
      bestSeller: false,
      commentQuantity: 123);
  var g2 = GamesArea(
      id: 2,
      name: "apex",
      image: "assets/images/apex.jpg",
      description:
          "Güçlü yeteneklere sahip efsanevi karakterlerin Frontier’ın sınırlarında şöhret ve ganimete ulaşmak için savaştığı ücretsiz oynanabilen* Kahraman nişancı oyunu Apex Legends’ı kendi yönteminizle fethedin. Kaosun hiç eksik olmadığı bir dünyada sürekli genişleyen Efsane kadrosunun, ayrıntılı taktiksel manga oyununun ve Battle Royale deneyiminin ötesine geçen cesur yeniliklerin ustası olun. Yeni nesil Kahraman Nişancıya hoş geldiniz.",
      systemRequirements: '''- 64-bit işlemci ve işletim sistemi gerektirir
- İşletim Sistemi: 64-bit Windows 7
- İşlemci: AMD FX 4350 or Equivalent, Intel Core i3 6300 or Equivalent
- Bellek: 6 GB RAM
- Ekran Kartı: AMD Radeon™ HD 7730, NVIDIA GeForce® GT 640
- DirectX: Sürüm 11
- Ağ: Genişbant İnternet bağlantısı
- Depolama: 56 GB kullanılabilir alan
- İlave Notlar: ~3.8GB for 1 localized language''',
      price: 0,
      points: 4.4,
      buyActive: true,
      bestSeller: false,
      commentQuantity: 123);
  var g3 = GamesArea(
      id: 3,
      name: "cyberpunk 2077",
      image: "assets/images/cyberpunk.jpg",
      description: "description",
      systemRequirements: '''system requirements''',
      price: 1234,
      points: 4.4,
      buyActive: true,
      bestSeller: false,
      commentQuantity: 123);
  var g4 = GamesArea(
      id: 4,
      name: "counter strike 2",
      image: "assets/images/csgo.jpg",
      description: "description",
      systemRequirements: '''system requirements''',
      price: 1234,
      points: 4.4,
      buyActive: true,
      bestSeller: false,
      commentQuantity: 123);
  var g5 = GamesArea(
      id: 5,
      name: "diablo",
      image: "assets/images/diablo.jpg",
      description: "description",
      systemRequirements: '''system requirements''',
      price: 1234,
      points: 4.4,
      buyActive: true,
      bestSeller: true,
      commentQuantity: 123);
  var g6 = GamesArea(
      id: 6,
      name: "farlight84",
      image: "assets/images/farlight84.jpg",
      description: "description",
      systemRequirements: '''system requirements''',
      price: 1234,
      points: 4.4,
      buyActive: true,
      bestSeller: false,
      commentQuantity: 123);
  var g7 = GamesArea(
      id: 7,
      name: "football Manager 2024",
      image: "assets/images/fbmanager24.jpg",
      description: "description",
      systemRequirements: '''system requirements''',
      price: 1234,
      points: 4.4,
      buyActive: true,
      bestSeller: true,
      commentQuantity: 123);
  var g8 = GamesArea(
      id: 8,
      name: "Grand Theft Auto 5",
      image: "assets/images/gta5.jpg",
      description: "description",
      systemRequirements: '''system requirements''',
      price: 1234,
      points: 4.4,
      buyActive: true,
      bestSeller: false,
      commentQuantity: 123);
  var g9 = GamesArea(
      id: 9,
      name: "Pubg BattleGround",
      image: "assets/images/pubg.jpg",
      description: "description",
      systemRequirements: '''system requirements''',
      price: 1234,
      points: 4.4,
      buyActive: true,
      bestSeller: false,
      commentQuantity: 123);
  var g10 = GamesArea(
      id: 10,
      name: "railgrade",
      image: "assets/images/railgrade.jpg",
      description: "description",
      systemRequirements: '''system requirements''',
      price: 1234,
      points: 4.4,
      buyActive: true,
      bestSeller: false,
      commentQuantity: 123);
  var g11 = GamesArea(
      id: 11,
      name: "sims4",
      image: "assets/images/sims4.jpg",
      description: "desc",
      systemRequirements: '''system requirements''',
      price: 1234,
      points: 4.4,
      buyActive: true,
      bestSeller: false,
      commentQuantity: 123);
  var g12 = GamesArea(
      id: 12,
      name: "warframe",
      image: "assets/images/warframe.jpg",
      description: "description",
      systemRequirements: '''system requirements''',
      price: 1234,
      points: 4.4,
      buyActive: true,
      bestSeller: false,
      commentQuantity: 123);

  gameLists.addAll([g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, g11, g12]);
  return gameLists;
}
