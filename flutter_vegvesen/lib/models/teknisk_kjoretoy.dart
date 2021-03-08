import 'aksler.dart';
import 'forbruk_og_utslipp.dart';
import 'karosseri.dart';
import 'lastegenskaper.dart';
import 'motorer.dart';

class TekniskKjoretoy {
  String? handelsbetegnelse;
  String? typebetegnelse;
  String? merke;
  String? kjoretoyAvgiftskode;
  String? tekniskKode;
  Object? miljoEuroklasse;
  int? sitteplasser;
  Object? staplasser;
  bool? oppbygd;
  int? lengde;
  int? bredde;
  int? hoyde;
  Lastegenskaper lastegenskaper;
  int? maksimumHastighet;
  bool? hybridElektriskKjoretoy;
  String? girkasse;
  String? hybridkategori;
  List<Motorer> motorer;
  Karosseri karosseri;
  List<ForbrukOgUtslipp> forbrukOgUtslipp;
  Aksler aksler;
  List<Object>? unntak;

  TekniskKjoretoy.fromJsonMap(Map<String, dynamic> map)
      : handelsbetegnelse = map["handelsbetegnelse"],
        typebetegnelse = map["typebetegnelse"],
        merke = map["merke"],
        kjoretoyAvgiftskode = map["kjoretoyAvgiftskode"],
        tekniskKode = map["tekniskKode"],
        miljoEuroklasse = map["miljoEuroklasse"],
        sitteplasser = map["sitteplasser"],
        staplasser = map["staplasser"],
        oppbygd = map["oppbygd"],
        lengde = map["lengde"],
        bredde = map["bredde"],
        hoyde = map["hoyde"],
        lastegenskaper = Lastegenskaper.fromJsonMap(map["lastegenskaper"]),
        maksimumHastighet = map["maksimumHastighet"],
        hybridElektriskKjoretoy = map["hybridElektriskKjoretoy"],
        girkasse = map["girkasse"],
        hybridkategori = map["hybridkategori"],
        motorer = List<Motorer>.from(
            map["motorer"].map((it) => Motorer.fromJsonMap(it))),
        karosseri = Karosseri.fromJsonMap(map["karosseri"]),
        forbrukOgUtslipp = List<ForbrukOgUtslipp>.from(map["forbrukOgUtslipp"]
            .map((it) => ForbrukOgUtslipp.fromJsonMap(it))),
        aksler = Aksler.fromJsonMap(map["aksler"]),
        unntak = map["unntak"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['handelsbetegnelse'] = handelsbetegnelse;
    data['typebetegnelse'] = typebetegnelse;
    data['merke'] = merke;
    data['kjoretoyAvgiftskode'] = kjoretoyAvgiftskode;
    data['tekniskKode'] = tekniskKode;
    data['miljoEuroklasse'] = miljoEuroklasse;
    data['sitteplasser'] = sitteplasser;
    data['staplasser'] = staplasser;
    data['oppbygd'] = oppbygd;
    data['lengde'] = lengde;
    data['bredde'] = bredde;
    data['hoyde'] = hoyde;
    data['lastegenskaper'] =
        lastegenskaper == null ? null : lastegenskaper.toJson();
    data['maksimumHastighet'] = maksimumHastighet;
    data['hybridElektriskKjoretoy'] = hybridElektriskKjoretoy;
    data['girkasse'] = girkasse;
    data['hybridkategori'] = hybridkategori;
    data['motorer'] =
        motorer != null ? this.motorer.map((v) => v.toJson()).toList() : null;
    data['karosseri'] = karosseri == null ? null : karosseri.toJson();
    data['forbrukOgUtslipp'] = forbrukOgUtslipp != null
        ? this.forbrukOgUtslipp.map((v) => v.toJson()).toList()
        : null;
    data['aksler'] = aksler == null ? null : aksler.toJson();
    data['unntak'] = unntak;
    return data;
  }

  @override
  toString() {
    return toJson().toString();
  }
}
