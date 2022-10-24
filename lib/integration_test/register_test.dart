import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integratetest/const_key/const_keys.dart';
import 'package:integration_test/integration_test.dart';
import 'package:integratetest/main.dart' as app;
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group("group_auth", (){
    testWidgets("MyRegister", (tester) async {
app.main();
      await tester.pumpAndSettle(const Duration(seconds: 1));
      await tester.enterText(find.byKey(ConstKey.Name), "Osaid");
      await tester.pumpAndSettle(const Duration(seconds: 1));
      await tester.enterText(find.byKey(ConstKey.Email), "oskam.2@gmail.com");
      await tester.pumpAndSettle(const Duration(seconds: 1));
      await tester.enterText(find.byKey(ConstKey.Password), "05959555");
      await tester.pumpAndSettle(const Duration(seconds: 1));
      await tester.testTextInput.receiveAction(TextInputAction.done);

    });
  });
}