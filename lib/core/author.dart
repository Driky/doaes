const String defaultAvatar = 'some/path/to/img.jpg';

class Author {
  final String name;
  final String avatar;
  final String occupation;
  final String email;

  Author(
      {required this.name,
      this.avatar = defaultAvatar,
      required this.occupation,
      required this.email});
}
