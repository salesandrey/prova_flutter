



import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:tecnical_test/main.dart' as app;

void main() {

  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group("Login Tests", () {

    testWidgets("Preenchendo Campos - Com valores validos", (WidgetTester tester) async {

      app.main();

      await tester.pumpAndSettle();

      await tester.enterText(find.byKey(const Key("inputUser")), "admin");

      await tester.enterText(find.byKey(const Key("inputPassword")), "1234");

      await Future.delayed(const Duration(seconds: 1));

      await tester.pumpAndSettle();

      await tester.tap(find.byKey(const Key("btnEnter")));

      await tester.pumpAndSettle();

      expect(find.text("Digite o seu texto"), findsOneWidget);
    });
  });
}