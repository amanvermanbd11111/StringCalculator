
import 'package:test/test.dart';
import '../lib/calculator.dart';

void main() {


  group('String Calculator', () {

    test('Empty string returns 0', () {
      expect(add(''), equals(0));
    });

    test('Single number returns itself', () {
      expect(add('1'), equals(1));
    });
    test('Two numbers comma separated', () {
      expect(add('1,2'), equals(3));
    });
    

  });
}
