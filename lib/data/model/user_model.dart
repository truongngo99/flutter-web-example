class User {
  final int? id;
  final String? name;
  final String? imageUrl;
  final bool? isOnline;
  User({
    this.id,
    this.name,
    this.imageUrl,
    this.isOnline,
  });
}

List<User> listUser = [
  User(
    id: 1,
    name: 'Iron Man',
    imageUrl: 'assets/images/ironman.jpeg',
    isOnline: true,
  ),
  User(
    id: 0,
    name: 'Nick Fury',
    imageUrl: 'assets/images/nick-fury.jpg',
    isOnline: false,
  ),
  User(
    id: 8,
    name: 'Captain Marvel',
    imageUrl: 'assets/images/captain-marvel.jpg',
    isOnline: false,
  ),
  User(
    id: 7,
    name: 'Thor',
    imageUrl: 'assets/images/thor.png',
    isOnline: false,
  ),
  User(
    id: 6,
    name: 'Black Widow',
    imageUrl: 'assets/images/black-widow.jpg',
    isOnline: false,
  ),
  User(
    id: 5,
    name: 'Spider Man',
    imageUrl: 'assets/images/spiderman.jpg',
    isOnline: true,
  ),
  User(
    id: 4,
    name: 'Scarlet Witch',
    imageUrl: 'assets/images/scarlet-witch.jpg',
    isOnline: false,
  ),
  User(
    id: 2,
    name: 'Captain America',
    imageUrl: 'assets/images/captain-america.jpg',
    isOnline: true,
  ),
  User(
    id: 3,
    name: 'Hulk',
    imageUrl: 'assets/images/hulk.jpg',
    isOnline: false,
  ),
  User(
    id: 1,
    name: 'Iron Man',
    imageUrl: 'assets/images/ironman.jpeg',
    isOnline: true,
  )
];
