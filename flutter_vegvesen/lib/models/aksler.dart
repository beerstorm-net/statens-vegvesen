class Aksler {
  int akselId;
  bool drivaksel;
  Object luftfjaering;
  int tillattLast;
  Object avstandtilNesteAksel;

  Aksler.fromJsonMap(Map<String, dynamic> map)
      : akselId = map["akselId"],
        drivaksel = map["drivaksel"],
        luftfjaering = map["luftfjaering"],
        tillattLast = map["tillattLast"],
        avstandtilNesteAksel = map["avstandtilNesteAksel"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['akselId'] = akselId;
    data['drivaksel'] = drivaksel;
    data['luftfjaering'] = luftfjaering;
    data['tillattLast'] = tillattLast;
    data['avstandtilNesteAksel'] = avstandtilNesteAksel;
    return data;
  }

  @override
  toString() {
    return toJson().toString();
  }
}
