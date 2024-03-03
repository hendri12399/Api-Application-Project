class RandomJokes{
  String setup;
  String punchline;

  RandomJokes(this.setup, this.punchline);
  factory RandomJokes.fromJson(Map<String, dynamic> json){
    return RandomJokes(json['setup'], json['punchline']);
  }
}