class Bored {
  String activity;
  String type;
  int participant;
  double price;
  String link;

  Bored(this.activity, this.type, this.participant, this.price, this.link);
  factory Bored.fromJson(Map<String, dynamic> json) {
    return Bored(
        json['activity'],
        json['type'],
        json["participants"],
        json['price'] is int
            ? (json['price'] as int).toDouble()
            : json['price'],
        json['link']);
  }
}