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
      location: 'Jl. Darmo',
      imageAsset: 'assets/images/zoo1.jpg'),
  TourismPlace(
      name: 'Kenjeran Beach',
      location: 'Jl. Kenjeran',
      imageAsset: 'assets/images/beach1.jpg'),
  TourismPlace(
      name: 'Bamboo Forest',
      location: 'Jl. Keputih',
      imageAsset: 'assets/images/bambu1.jpg'),
  TourismPlace(
      name: 'Surabaya Heroic Monument',
      location: 'Jl. Pahlawan',
      imageAsset: 'assets/images/heroic1.jpg'),
  TourismPlace(
      name: 'Bambu Runcing',
      location: 'Genteng',
      imageAsset: 'assets/images/runcing1.jpg'),
  TourismPlace(
      name: 'Alun-Alun Surabaya',
      location: 'Genteng',
      imageAsset: 'assets/images/alun.jpg'),
];
