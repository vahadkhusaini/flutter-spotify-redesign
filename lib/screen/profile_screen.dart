import 'package:flutter/material.dart';
import 'package:flutter_starter/components/my_appbar.dart';
import 'package:flutter_starter/model/playlist_model.dart';
import 'package:flutter_starter/style/starter_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<PlaylistModel> playlists = [];

  @override
  void initState() {
    super.initState();
    playlists = PlaylistModel.getPlaylist();
  }

  @override
  Widget build(BuildContext context) {
    var playlist = SizedBox(
      width: 300,
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        separatorBuilder: (context, index) {
          return SizedBox(height: 10);
        },
        itemCount: playlists.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Center(
                child: Image.asset(playlists[index].albumPath, height: 58),
              ),
              SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      playlists[index].title,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      playlists[index].artist,

                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              Text(
                playlists[index].duration,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(width: 60),
              Image.asset('assets/icon/others.png', height: 21),
            ],
          );
        },
      ),
    );

    return Scaffold(
      backgroundColor:
          Theme.of(context).brightness == Brightness.light
              ? StarterColors.white.color
              : StarterColors.dark.color,
      appBar: MyAppbar(
        leading: true,
        title: 'Profile',
        leadingCat: '',
        actionCat: 'others',
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  ),
                  color:
                      Theme.of(context).brightness == Brightness.light
                          ? StarterColors.pureWhite.color
                          : StarterColors.greyCard.color,
                ),
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                            'assets/poster/john.jpeg',
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'vahadkhusaini@gmail.com',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Vahad Khusaini',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '778',
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                Text(
                                  'Followers',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                            ),
                            SizedBox(width: 100),
                            Column(
                              children: [
                                Text(
                                  '243',
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                Text(
                                  'Following',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Public Playlists',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.all(20), child: playlist),
          ],
        ),
      ),
    );
  }
}
