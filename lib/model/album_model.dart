class AlbumModel {
  String title;
  String artist;
  String albumPath;

  AlbumModel({
    required this.title,
    required this.artist,
    required this.albumPath,
  });

  static List<AlbumModel> getAlbums() {
    List<AlbumModel> albums = [];

    albums.add(
      AlbumModel(
        title: 'Bad Guys',
        artist: 'Billie Eilish',
        albumPath: 'assets/poster/billie.png',
      ),
    );

    albums.add(
      AlbumModel(
        title: 'Scorpion',
        artist: 'Drake',
        albumPath: 'assets/poster/drake.png',
      ),
    );

    albums.add(
      AlbumModel(
        title: 'December',
        artist: 'Neckdeep',
        albumPath: 'assets/poster/neckdeep.jpeg',
      ),
    );

    return albums;
  }
}
