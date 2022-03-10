class TourismPlace {
  String name;
  String location;
  String imageAsset;

  TourismPlace({
    required this.name,
    required this.location,
    required this.imageAsset,
  });
}

var tourismPlaceList = [
  TourismPlace(
      name: 'Surabaya Zoo',
      location: 'Jl. Setail No.1, Darmo',
      imageAsset: 'assets/images/zoo1.jpg'),
  TourismPlace(
      name: 'Kenjeran Beach',
      location: 'Jl. Kenjeran, Bulak',
      imageAsset: 'assets/images/beach1.jpg'),
  TourismPlace(
      name: 'Bamboo Forest',
      location: 'Jl. Raya Marina Asri, Keputih',
      imageAsset: 'assets/images/bambu1.jpg'),
];
