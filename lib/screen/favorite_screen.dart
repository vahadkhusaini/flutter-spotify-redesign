import 'package:flutter/material.dart';
import 'package:flutter_starter/components/my_appbar.dart';
import 'package:flutter_starter/model/playlist_model.dart';
import 'package:flutter_starter/style/starter_colors.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<PlaylistModel> playlists = [];

  @override
  void initState() {
    super.initState();
    playlists = PlaylistModel.getPlaylist();
  }

  @override
  Widget build(BuildContext context) {
    var favorite = SizedBox(
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

                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                playlists[index].duration,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(width: 60),
              Image.asset(
                'assets/icon/favorite.png',
                width: 21,
                color: StarterColors.lime.color,
              ),
            ],
          );
        },
      ),
    );

    return Scaffold(
      appBar: MyAppbar(
        leading: true,
        title: 'Favorites',
        leadingCat: '',
        actionCat: 'others',
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: ListView(
            children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: StarterColors.pureWhite.color,
                  filled: true,
                  focusColor: StarterColors.pureWhite.color,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: StarterColors.greyLight.color,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'Find in Favorites Song?',
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Image.asset(
                      'assets/icon/search.png',
                      color: Colors.black,
                    ),
                  ), // Example for validation
                ),
                keyboardType:
                    TextInputType.emailAddress, // Example keyboard type
                onChanged: (text) {
                  // Handle text changes
                },
                // Other properties like obscureText, maxLength, etc.
              ),
              SizedBox(height: 20),
              Text(
                'Favorites Song',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 20),
              favorite,
            ],
          ),
        ),
      ),
    );
  }
}
