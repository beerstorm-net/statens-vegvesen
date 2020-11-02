class Lastegenskaper {
  int egenvekt;
  int tillattTotalvekt;
  int nyttelast;
  int tillattTilhengervektMedBrems;
  int tillattTilhengervektUtenBrems;
  int tillattVertikalKoplingslast;
  int tillattVogntogvekt;
  Object tillattTaklast;

  Lastegenskaper.fromJsonMap(Map<String, dynamic> map)
      : egenvekt = map["egenvekt"],
        tillattTotalvekt = map["tillattTotalvekt"],
        nyttelast = map["nyttelast"],
        tillattTilhengervektMedBrems = map["tillattTilhengervektMedBrems"],
        tillattTilhengervektUtenBrems = map["tillattTilhengervektUtenBrems"],
        tillattVertikalKoplingslast = map["tillattVertikalKoplingslast"],
        tillattVogntogvekt = map["tillattVogntogvekt"],
        tillattTaklast = map["tillattTaklast"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['egenvekt'] = egenvekt;
    data['tillattTotalvekt'] = tillattTotalvekt;
    data['nyttelast'] = nyttelast;
    data['tillattTilhengervektMedBrems'] = tillattTilhengervektMedBrems;
    data['tillattTilhengervektUtenBrems'] = tillattTilhengervektUtenBrems;
    data['tillattVertikalKoplingslast'] = tillattVertikalKoplingslast;
    data['tillattVogntogvekt'] = tillattVogntogvekt;
    data['tillattTaklast'] = tillattTaklast;
    return data;
  }

  @override
  toString() {
    return toJson().toString();
  }
}
