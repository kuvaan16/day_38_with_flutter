class MoviesCover {
  String cover;
  String name;
  String type1;
  String type2;
  String type3;
  bool isRated;
  MoviesCover({
    required this.cover,
    required this.name,
    required this.type1,
    required this.type2,
    required this.type3,
    required this.isRated,
  });
}

class Cast {
  String realName;
  String asActed;
  String image;
  Cast({
    required this.realName,
    required this.asActed,
    required this.image,
  });
}

class Crew {
  String realName;
  String asActed;
  String image;
  Crew({
    required this.realName,
    required this.asActed,
    required this.image,
  });
}

class Reviews {
  String name;
  String review;
  String rating;
  String hashtag;
  Reviews({
    required this.name,
    required this.review,
    required this.rating,
    required this.hashtag,
  });
}

List<Reviews> getReviews = [
  Reviews(
    name: "Michael Cook",
    review:
        "The special effects are breathtaking...Like all sequels, the original was a bit better.",
    hashtag: "#OneTimeWatch",
    rating: "8/10",
  ),
  Reviews(
    name: "Jared Mobarak",
    review:
        "We can accept a barebones revenger because it lets us reacquaint ourselves with Pandora. Cameron is easing us back in with a conflict we don't need to expend too much energy on so we can absorb everything else in the background.",
    hashtag: "#inspiring",
    rating: "8/10",
  ),
  Reviews(
    name: "Marriska Fernandes",
    review:
        "Avatar: The Way of Water is nothing short of a cinematic marvel, outweighing its predecessor on many fronts.",
    hashtag: "#nicesounds",
    rating: "9/10",
  ),
  Reviews(
    name: "Ray Pride",
    review:
        "The movie’s roaring achievement: There’s cinematic genius in every overdetermined frame, every animated motion in shifting frame rates, the relentless photorealistic detail. The sensation is like being trapped in a bathysphere in an aquarium.",
    hashtag: "#superdirection",
    rating: "6/10",
  ),
];

List<Crew> getCrew = [
  Crew(
      realName: "James Cameron",
      asActed: "Director.Writer",
      image: "lib/images/crew/1.jpg"),
  Crew(
      realName: "Amanda Silver",
      asActed: "Writer",
      image: "lib/images/crew/2.png"),
  Crew(
      realName: "Rick Jaffa",
      asActed: "Writer",
      image: "lib/images/crew/3.jpg"),
];

List<Cast> getCast = [
  Cast(
      realName: "Sam Worthington",
      asActed: "Jake Sully",
      image: "lib/images/cast/1.jpg"),
  Cast(
      realName: "Zoe Saldaña",
      asActed: "Neytiri",
      image: "lib/images/cast/2.jpg"),
  Cast(
      realName: "Stephen Lang",
      asActed: "Colonel Miles Quaritch",
      image: "lib/images/cast/3.jpg"),
  Cast(
      realName: "Sigourney Weaver",
      asActed: "Kiri",
      image: "lib/images/cast/4.jpg"),
  Cast(
      realName: "Kate Winslet",
      asActed: "Ronal",
      image: "lib/images/cast/5.jpg"),
];

List<MoviesCover> getMoviesCover = [
  MoviesCover(
    cover: 'lib/images/avatar.jpg',
    name: 'Avatar',
    type1: 'Action',
    type2: 'Sci-Fi',
    type3: 'Adventure',
    isRated: true,
  ),
  MoviesCover(
    cover: 'lib/images/blackadam.jpg',
    name: 'Black Adam',
    type1: 'Action',
    type2: 'Drama',
    type3: 'Adventure',
    isRated: true,
  ),
  MoviesCover(
    cover: 'lib/images/blackpanther.jpg',
    name: 'Black Panther',
    type1: 'Action',
    type2: 'Sci-Fi',
    type3: 'Adventure',
    isRated: true,
  ),
  MoviesCover(
    cover: 'lib/images/varisu.jpg',
    name: 'Varisu',
    type1: 'Action',
    type2: 'Sci-Fi',
    type3: 'Adventure',
    isRated: false,
  ),
];
