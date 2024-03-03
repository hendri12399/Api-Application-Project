class CatFact {
  String fact;
  int length;

  CatFact(this.fact, this.length);

  factory CatFact.fromJson(Map<String, dynamic> json){
    return CatFact(json["fact"], json["length"]);
  }
}