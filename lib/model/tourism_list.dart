import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/detail_screen.dart';
import 'package:flutter_1/model/list_item.dart';
import 'package:flutter_1/model/tourism_place.dart';
import 'package:flutter_1/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class TourismList extends StatefulWidget {
  const TourismList({Key? key}) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
        name: 'Surabaya Zoo',
        location: 'Jl. Darmo',
        imageAsset: 'assets/images/zoo1.jpg',
        day: 'Everyday',
        hour: '08.00-16.00',
        fee: 'Rp.15.000,-',
        desc:
            'Kebun Binatang Surabaya (KBS)adalah salah satu kebun binatang yang populer di Indonesia dan terletak di Surabaya. KBS merupakan kebun binatang yang pernah terlengkap se-Asia Tenggara, di dalamnya terdapat lebih dari 211 spesies satwa yang berbeda yang terdiri lebih dari 2.236 binatang. Termasuk di dalamnya satwa langka Indonesia maupun dunia terdiri dari Mamalia, Aves, Reptilia, dan Pisces.',
        galery: [
          'assets/images/zoo2.jpg',
          'assets/images/zoo3.jpg',
          'assets/images/zoo4.jpg'
        ]),
    TourismPlace(
        name: 'Bamboo Forest',
        location: 'Jl. Keputih',
        imageAsset: 'assets/images/bambu1.jpg',
        day: 'Everyday',
        hour: '24 Hours',
        fee: 'Free',
        desc:
            'Mendengar nama “Hutan Bambu”, mungkin yang terlintas adalah hutan di pedesaan. Tapi jangan salah, di tengah kota pun dapat terwujud tempat asri seperti ini. Suasananya yang asri membuat pengunjung berbondong-bondong datang ke lokasi ini. Dan sekarang, taman rekreasi ini tengah menjadi favorit pengunjung menghabiskan waktu luang.',
        galery: [
          'assets/images/bambu2.jpg',
          'assets/images/bambu3.jpg',
          'assets/images/bambu4.jpg'
        ]),
    TourismPlace(
        name: 'Kenjeran Beach',
        location: 'Jl. Kenjeran',
        imageAsset: 'assets/images/beach1.jpg',
        day: 'Everyday',
        hour: '06.00-17.00',
        fee: 'Rp.15.000,-',
        desc:
            'Kamu dapat menikmati keindahan Pantai Kenjeran Surabaya dengan wisata kuliner, menikmati keindahan sunset dan sunrise, dan juga dengan berlayar menggunakan perahu. Pemandangan yang terdapat di pantai ini memang sangat menyatu dengan kondisi alam sehingga dapat membuat perasaanmu jauh lebih rileks',
        galery: [
          'assets/images/beach2.jpg',
          'assets/images/beach3.jpg',
          'assets/images/beach4.jpg'
        ]),
    TourismPlace(
        name: 'Bambu Runcing',
        location: 'Genteng',
        imageAsset: 'assets/images/runcing1.jpg',
        day: 'Everyday',
        hour: '24 Hours',
        fee: 'Free',
        desc:
            'Monumen bambu runcing ini berada di jantung kota Surabaya tepatnya di tengah-tengah Jalan Panglima Sudirman. disebelah timur monumen terdapat Jalan Embong Ploso dan di sebelah baratnya terdapat Jalan Embong Sawo. Akses yang mudah menjadi monumen ini ramai dikunjungi oleh masyarakat Surabaya khususnya pada akhir pekan. ',
        galery: [
          'assets/images/runcing2.jpg',
          'assets/images/runcing3.jpg',
          'assets/images/runcing4.jpg'
        ]),
    TourismPlace(
        name: 'Surabaya Heroic Monument',
        location: 'Jl. Pahlawan',
        imageAsset: 'assets/images/heroic1.jpg',
        day: 'Everyday',
        hour: '08.00-16.00',
        fee: 'Rp.2.000,-',
        desc:
            'Heroes Monument, also known as Heroic Monument (Indonesian:Tugu Pahlawan) is a monument in Surabaya, Indonesia. It is the main symbol of the city, dedicated to the people who died during the Battle of Surabaya on November 10, 1945. Entrance fee only Rp.2000,00/person',
        galery: [
          'assets/images/heroic2.jpg',
          'assets/images/heroic3.jpg',
          'assets/images/heroic4.jpg'
        ]),
    TourismPlace(
        name: 'Taman Bungkul',
        location: 'Jl. Bungkul',
        imageAsset: 'assets/images/bungkul1.jpg',
        day: 'Everyday',
        hour: '24 Hours',
        fee: 'Free',
        desc:
            'Taman bungkul mengusung konsep Ruang Terbuka Hijau yang sesungguhnya. Konsep ini tak diaplikasikan di taman-taman terkenal di kota wisata lainnya. Ribuan spesies tanaman tumbuh dengan subur di sini. Tanaman hias, tanaman bunga, dan pohon-pohon dirawat dan ditata dengan baik oleh dinas berwenang. Alhasil, taman terlihat hijau, sejuk, dan rapi.',
        galery: [
          'assets/images/bungkul2.jpg',
          'assets/images/bungkul3.jpg',
          'assets/images/bungkul4.jpg'
        ]),
    TourismPlace(
        name: 'Patung Suro Boyo',
        location: 'Jl. Darmo',
        imageAsset: 'assets/images/patung1.jpg',
        day: 'Everyday',
        hour: '24 Hours',
        fee: 'Free',
        desc:
            'Patung Sura Baya. Ikon kota Surabaya yang kokoh berdiri di Jl. Diponegoro, Darmo, Surabaya ini merupakan kebanggan warga setempat dan menjadi salah satu tujuan paket wisata Surabaya. Lokasinya tepat berada di depan Kebun Binatang Surabaya dan merupakan salah satu spot foto favorit wisatawan yang berkunjung di kota ini.',
        galery: [
          'assets/images/patung2.jpg',
          'assets/images/patung3.jpg',
          'assets/images/patung4.jpg'
        ]),
    TourismPlace(
        name: 'Alun-Alun Surabaya',
        location: 'Genteng',
        imageAsset: 'assets/images/alun.jpg',
        day: 'Everyday',
        hour: '09.00-21.00',
        fee: 'Free',
        desc:
            'Alun Alun Bawah Tanah Surabaya terdiri dari 2 bagian. Pertama ruangan Galeri Seni yang memajang banyak foto karya seni. Sedangkan bagian kedua adalah area untuk bermain skate board. Pada area skate board ini terdapat skylight kaca yang memancarkan sinar matahari dari luar.',
        galery: [
          'assets/images/alun2.jpg',
          'assets/images/alun3.jpg',
          'assets/images/alun4.jpg'
        ]),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: Consumer<DoneTourismProvider>(
              builder: (context, DoneTourismProvider data, widget) {
            return ListItem(
              place: place,
              isDone: data.doneTourismPlaceList.contains(place),
              onCheckboxClick: (bool? value) {
                data.complete(place, value!);
              },
            );
          }),
        );
      },
      itemCount: tourismPlaceList.length,
    );
  }
}
