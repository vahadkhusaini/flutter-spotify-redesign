import 'package:flutter/material.dart';
import 'package:flutter_starter/components/my_appbar.dart';
import 'package:flutter_starter/style/starter_colors.dart';

class LyricsScreen extends StatelessWidget {
  const LyricsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: playerBottom(context),
      appBar: MyAppbar(
        leading: true,
        title: "One Last Time",
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
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Text(
                  "Sleepin', you're on your tippy toes Creepin' around like no one knows Think you're so criminal Bruises on both my knees for you Don't say thank you or please I do what I want when I'm wanting to My soul? So cynical Sleepin', you're on your tippy toes Creepin' around like no one knows Think you're so criminal Bruises on both my knees for you Don't say thank you or please I do what I want when I'm wanting to My soul? So cynical",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container playerBottom(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(color: StarterColors.grey.color),
      child: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50),
        child: Column(
          children: [
            SizedBox(height: 20),
            titleArtis(context),
            SizedBox(height: 20),
            progressPlaying(context),
            SizedBox(height: 20),
            playerToggle(),
          ],
        ),
      ),
    );
  }

  Column progressPlaying(BuildContext context) {
    return Column(
      children: [
        LinearProgressIndicator(
          value: 0.5,
          borderRadius: BorderRadius.circular(50),
          valueColor: AlwaysStoppedAnimation<Color>(StarterColors.white.color),
          backgroundColor: StarterColors.greyYoung.color,
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('2:25', style: Theme.of(context).textTheme.bodySmall),
            Text('4:02', style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ],
    );
  }

  GestureDetector lyricsToggle(BuildContext context) {
    return GestureDetector(
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
          height: 51,
          width: 51,
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
          child: Row(
            children: [
              albumPlayer(),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'One Last Time',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Ariana Grade',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
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
      borderRadius: BorderRadius.circular(100),
      child: Image.asset(
        'assets/poster/ariana.jpeg',
        width: 42,
        height: 42,
        fit: BoxFit.cover,
      ),
    );
  }
}
