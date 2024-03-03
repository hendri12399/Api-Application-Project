
class Agify{
  String name;
  int age;

  Agify(this.name, this.age);
  factory Agify.fromJson (Map<String, dynamic>json){
    return Agify(json["name"], json["age"]);
  }
}