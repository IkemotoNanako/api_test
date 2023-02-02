class GithubUser {
  /// 名前付き引数のコンストラクターは多分あったほうが困らないので
  /// 特に理由がなければ作ったほうがよさそう
  GithubUser({
    required this.login,
    required this.avatarUrl,
    required this.htmlUrl,
    required this.type,
  });
  final String login;

  final String avatarUrl;

  final String htmlUrl;

  final String type;

  /// factoryを使ったほうが柔軟にいろいろできるしいいよ。
  factory GithubUser.fromJson(Map<String, dynamic> json) {
    return GithubUser(
      login: json['login'] ?? '',
      avatarUrl: json['avatar_url'] ?? '',
      htmlUrl: json['html_url'] ?? '',
      type: json['type'] ?? '',
    );
  }
  // GithubUser.fromJson(Map<String, dynamic> json)
  //     : login = json['login'] ?? '',
  //       avatarUrl = json['avatar_url'] ?? '',
  //       htmlUrl = json['html_url'] ?? '',
  //       type = json['type'] ?? '';
}
