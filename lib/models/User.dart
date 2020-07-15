class User {
  final String name;
  final String avatarurl;
  final String url;
  final String blog;
  final int followers;
  final int publicrepos;

  User(this.name, this.avatarurl, this.url, this.blog, this.followers,
      this.publicrepos);

  factory User.fromJson(Map<String, dynamic> json) {
    //print(json)
    return new User(json['name'], json['avatar_url'], json['url'], json['blog'],
        json['followers'], json['public_repos']);
  }
}
