import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_vegvesen/flutter_vegvesen.dart';
import 'package:flutter_vegvesen/models/kjoretoy.dart';

void main() {
  test('hent kjøretøy', () async {
    final vegvesen = Vegvesen(bilskilt: 'EB65943');
    Kjoretoy kjoretoy = await vegvesen.hentKjoretoy();
    print('kjoretoy: $kjoretoy');

    expect(kjoretoy?.kuid, "3094412214");
    expect(vegvesen.elbil(), true);
  });
}
