import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:test_cases/validator_widget.dart';

void main(){

  group('validation check', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    test('validate email id', () {
      final fieldValidator = FieldValidator();
      var result = fieldValidator.validateEmail('');
      expect(result, 'Enter Email');
    });

    test('validate Password', () {
      final fieldValidator = FieldValidator();
      var result = fieldValidator.validatePassword('234567890467');
      expect(result, '');
    });
  });
}