import 'package:flutter/material.dart';
import 'package:flutter_starter/model/album_model.dart';
import 'package:flutter_starter/style/starter_colors.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<AlbumModel> albums = [];

  @override
  void initState() {
    super.initState();
    albums = AlbumModel.getAlbums();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizedBox album() {
      return SizedBox(
        height: 300,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    albums[index].albumPath,
                    height: 185,
                    width: 147,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        albums[index].title,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(albums[index].artist),
                    ],
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (context, index) => SizedBox(width: 16),
          itemCount: albums.length,
        ),
      );
    }

    Widget tabBar() {
      return TabBar(
        controller: _tabController,
        indicatorWeight: 3,
        unselectedLabelColor: Colors.black,
        isScrollable: true,
        indicatorColor: StarterColors.lime.color,
        dividerColor: Colors.transparent,
        tabAlignment: TabAlignment.center,
        tabs: [
          Tab(
            child: Text(
              'News',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Tab(
            child: Text(
              'Video',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Tab(
            child: Text(
              'Artists',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Tab(
            child: Text(
              'Podcast',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                height: 118,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: StarterColors.lime.color,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'New Album',
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Happier Than Ever',
                          style: Theme.of(context).textTheme.headlineMedium
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Billie Eilish',
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/album_billie.png',
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              tabBar(),
              SizedBox(height: 30),
              album(),

              // Warna latar belakang tab

              // Add more widgets here as needed
            ],
          ),
        ),
      ),
    );
  }
}
