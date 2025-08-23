import 'package:flutter/widgets.dart';

class DiscoverModel {
  final String title;
  final String imageUrl;
  final Color? bgColor;

  DiscoverModel({
    required this.title,
    required this.imageUrl,
    required this.bgColor,
  });

  static List<DiscoverModel> getDiscoverItems() {
    return [
      DiscoverModel(
        title: 'Made For You',
        imageUrl: 'assets/cover/Art 14.png',
        bgColor: Color(0xFFD00000),
      ),
      DiscoverModel(
        title: 'Upcoming Releases',
        imageUrl: 'assets/cover/Art 20.png',
        bgColor: Color(0xFFfb8500),
      ),
      DiscoverModel(
        title: 'Top Hits',
        imageUrl: 'assets/cover/Art 16.png',
        bgColor: Color(0xFFE4959E),
      ),
      DiscoverModel(
        title: 'New Releases',
        imageUrl: 'assets/cover/Art 13.png',
        bgColor: Color(0xFF7d1128),
      ),
      DiscoverModel(
        title: 'Musik Indonesia',
        imageUrl: 'assets/cover/Art 2.png',
        bgColor: Color(0xFFBB6BD9),
      ),
      DiscoverModel(
        title: 'Chill Vibes',
        imageUrl: 'assets/cover/Art 8.png',
        bgColor: Color(0xFFa4161a),
      ),
      DiscoverModel(
        title: 'Friday Mix',
        imageUrl: 'assets/cover/Art 19.png',
        bgColor: Color(0xFF4BA3C3),
      ),
      DiscoverModel(
        title: 'Workout Mix',
        imageUrl: 'assets/cover/Art 12.png',
        bgColor: Color(0xFF003049),
      ),
      DiscoverModel(
        title: 'Pop 2025',
        imageUrl: 'assets/cover/Art 10.png',
        bgColor: Color(0xFFffbe0b),
      ),
      DiscoverModel(
        title: 'Top Playlist',
        imageUrl: 'assets/cover/Art 17.png',
        bgColor: Color(0xFFe9724c),
      ),
      DiscoverModel(
        title: 'Podcasts',
        imageUrl: 'assets/cover/Art 1.png',
        bgColor: Color(0xFF445e93),
      ),
      DiscoverModel(
        title: 'Charts',
        imageUrl: 'assets/cover/Art 18.png',
        bgColor: Color(0xFFffb700),
      ),
    ];
  }
}
