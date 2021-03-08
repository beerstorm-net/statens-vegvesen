class PeriodiskKjoretoykontroll {
  Object? sistKontrollert;
  String? nesteKontroll;

  PeriodiskKjoretoykontroll.fromJsonMap(Map<String, dynamic> map)
      : sistKontrollert = map["sistKontrollert"],
        nesteKontroll = map["nesteKontroll"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sistKontrollert'] = sistKontrollert;
    data['nesteKontroll'] = nesteKontroll;
    return data;
  }

  @override
  toString() {
    return toJson().toString();
  }
}
