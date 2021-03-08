import 'nox_utslipp.dart';

class ForbrukOgUtslipp {
  String? drivstoffkode;
  String? malemetode;
  Object? forbrukBlandetKjoring;
  NoxUtslipp noxUtslipp;
  Object? rekkeviddeKm;
  Object? elEnergiForbruk;
  Object? partikkelfilterFabrikkmontert;
  Object? co2Utslipp;

  ForbrukOgUtslipp.fromJsonMap(Map<String, dynamic> map)
      : drivstoffkode = map["drivstoffkode"],
        malemetode = map["malemetode"],
        forbrukBlandetKjoring = map["forbrukBlandetKjoring"],
        noxUtslipp = NoxUtslipp.fromJsonMap(map["noxUtslipp"]),
        rekkeviddeKm = map["rekkeviddeKm"],
        elEnergiForbruk = map["elEnergiForbruk"],
        partikkelfilterFabrikkmontert = map["partikkelfilterFabrikkmontert"],
        co2Utslipp = map["co2Utslipp"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['drivstoffkode'] = drivstoffkode;
    data['malemetode'] = malemetode;
    data['forbrukBlandetKjoring'] = forbrukBlandetKjoring;
    data['noxUtslipp'] = noxUtslipp == null ? null : noxUtslipp.toJson();
    data['rekkeviddeKm'] = rekkeviddeKm;
    data['elEnergiForbruk'] = elEnergiForbruk;
    data['partikkelfilterFabrikkmontert'] = partikkelfilterFabrikkmontert;
    data['co2Utslipp'] = co2Utslipp;
    return data;
  }

  @override
  toString() {
    return toJson().toString();
  }
}
