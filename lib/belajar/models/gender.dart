class Gender {
  String name;
  String gender;
  int count;

  Gender(this.name, this.gender, this.count);

  factory Gender.fromJson(Map<String, dynamic> json) =>
      Gender(json["name"], json["gender"], json["count"]);
}