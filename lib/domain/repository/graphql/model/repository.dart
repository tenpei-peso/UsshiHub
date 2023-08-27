class Repository {
  int contributionCount;

  Repository({
    required this.contributionCount,
  });

  factory Repository.fromJson(Map<String, dynamic> json) {
    return Repository(
        contributionCount: json['contributionCount'],
    );
  }

}