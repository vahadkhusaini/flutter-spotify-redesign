class PlaylistModel {
  String title;
  String artist;
  String albumPath;
  String duration;

  PlaylistModel({
    required this.title,
    required this.artist,
    required this.albumPath,
    required this.duration,
  });

  static List<PlaylistModel> getPlaylist() {
    List<PlaylistModel> playlist = [
      PlaylistModel(
        title: 'As It Was',
        artist: 'Harry Styles',
        albumPath: 'assets/album/as_it_was.png',
        duration: '05:30',
      ),
      PlaylistModel(
        title: 'Dont Smile At Me',
        artist: 'Billie Eilish',
        albumPath: 'assets/album/dont_smile.png',
        duration: '03:45',
      ),
      PlaylistModel(
        title: 'Super Freaky Girl',
        artist: 'Nicki Minaj',
        albumPath: 'assets/album/super_freaky.png',
        duration: '08:15',
      ),
      PlaylistModel(
        title: 'Bad Habit',
        artist: 'Steve Lacy',
        albumPath: 'assets/album/bad_habit.png',
        duration: '05:15',
      ),
      PlaylistModel(
        title: 'Planet Her',
        artist: 'Doja Cat',
        albumPath: 'assets/album/planet_her.png',
        duration: '05:15',
      ),
      PlaylistModel(
        title: 'Sweetest Pie',
        artist: 'Megan Thee Stallion',
        albumPath: 'assets/album/sweetest_pie.png',
        duration: '05:15',
      ),
    ];

    return playlist;
  }
}
