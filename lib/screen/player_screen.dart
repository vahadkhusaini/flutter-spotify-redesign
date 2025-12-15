import 'package:flutter/material.dart';
import 'package:flutter_starter/components/my_appbar.dart';
import 'package:flutter_starter/screen/lyrics_screen.dart';
import 'package:flutter_starter/style/starter_colors.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar(
        leading: true,
        title: "Now Playing",
        leadingCat: 'back',
        actionCat: 'others',
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 40,
            left: 40,
            top: 20,
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              albumPlayer(),
              titleArtis(context),
              SizedBox(height: 20),
              Column(
                children: [
                  LinearProgressIndicator(
                    value: 0.5,
                    borderRadius: BorderRadius.circular(50),
                    valueColor: AlwaysStoppedAnimation<Color>(
                      StarterColors.white.color,
                    ),
                    backgroundColor: StarterColors.greyYoung.color,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '2:25',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        '4:02',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ],
              ),
              playerToggle(),
              SizedBox(height: 20),
              lyricsToggle(context),
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector lyricsToggle(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LyricsScreen()),
        );
      },
      child: Column(
        children: [
          Image.asset('assets/icon/up.png', height: 24),
          Text('Lyrics', style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }

  Row playerToggle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('assets/icon/repeat.png', height: 24),
        Image.asset('assets/icon/previous.png', height: 24),
        Container(
          height: 72,
          width: 72,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: StarterColors.lime.color,
          ),
          child: Center(
            child: Image.asset(
              'assets/icon/play.png',
              height: 28,
              color: StarterColors.white.color,
            ),
          ),
        ),
        Image.asset('assets/icon/next.png', height: 24),
        Image.asset('assets/icon/shuffle.png', height: 24),
      ],
    );
  }

  Row titleArtis(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'One Last Time',
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
              ),
              Text(
                'Ariana Grade',
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w100),
              ),
            ],
          ),
        ),
        Image.asset('assets/icon/heart_nav.png', height: 24),
      ],
    );
  }

  ClipRRect albumPlayer() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Image.asset(
        'assets/poster/ariana.jpeg',
        width: 335,
        height: 370,
        fit: BoxFit.cover,
      ),
    );
  }
}
