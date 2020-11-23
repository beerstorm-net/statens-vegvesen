library flutter_vegvesen;

import 'dart:convert';

import 'package:flutter_vegvesen/models/drivstoff.dart';
import 'package:http/http.dart' as http;

import 'models/kjoretoy.dart';

class Vegvesen {
  final String kjoretoyOppslag =
      "https://www.vegvesen.no/ws/no/vegvesen/kjoretoy/kjoretoyoppslag/v1/kjennemerkeoppslag/kjoretoy/";
  String _bilskilt;

  /// init with 'bilskilt' as optional parameter
  Vegvesen({String bilskilt}) : this._bilskilt = bilskilt;
  //: assert(bilskilt != null),
  //  this._bilskilt = bilskilt;

  /// getter/setter for bilskilt
  get bilskilt => this._bilskilt;
  set bilskilt(String bilskilt) => this._bilskilt = bilskilt;

  Kjoretoy _kjoretoy;

  /// get all details from Statens Vegvesen
  Future<Kjoretoy> hentKjoretoy({String bilskilt}) async {
    if (bilskilt != null) {
      this._bilskilt = bilskilt.trim();
    }
    if (_bilskilt == null || _bilskilt.trim().isEmpty) {
      throw Exception("bilskilt kan ikke være null! du må sette inn!");
    }

    if (_kjoretoy != null &&
        (_kjoretoy.kjennemerke == _bilskilt ||
            _kjoretoy.personligKjennemerke == _bilskilt)) {
      print('kjoretoy allerede lastet, retur igjen');
      return _kjoretoy;
    }

    String reqUrl = kjoretoyOppslag + _bilskilt;
    Kjoretoy kjoretoy;
    try {
      final response = await http.get(reqUrl);
      if (response.statusCode <= 201) {
        Map<String, dynamic> responseMap = json.decode(response.body);

        //print('response: $responseMap');

        kjoretoy = Kjoretoy.fromJsonMap(responseMap);

        //print('kjoretoy: $kjoretoy');
      }
    } catch (ex) {
      print(ex);
    }

    this._kjoretoy = kjoretoy;
    return kjoretoy;
  }

  /// check if it is Elbil
  bool elbil() {
    if (_kjoretoy == null) {
      throw Exception("du må laste kjoretoy via 'hentKjoretoy' method");
    }

    bool isElbil;
    if (_kjoretoy.tekniskKjoretoy != null &&
        _kjoretoy.tekniskKjoretoy.motorer != null &&
        _kjoretoy.tekniskKjoretoy.motorer.isNotEmpty) {
      List<Drivstoff> drivstoffList =
          _kjoretoy.tekniskKjoretoy.motorer.first.drivstoff;
      if (drivstoffList.isNotEmpty) {
        drivstoffList.forEach((drivstoff) {
          if (drivstoff.drivstofftype.toLowerCase() == "elektrisk") {
            isElbil = true;
          }
        });
      }
    }

    //print('isElbil: $isElbil');
    return isElbil;
  }
}
