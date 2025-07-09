
import 'package:test/test.dart';
import '../lib/calculator.dart';

void main() {


  group('String Calculator', () {

    test('Empty string returns 0', () {
      expect(add(''), equals(0));
    }); 
    

  });
}
