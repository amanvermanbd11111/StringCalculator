
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

    test('Handle new lines between numbers', () {
      expect(add('1\n2,3'), equals(6));
    });

    test('Custom delimiter ;', () {
      expect(add('//;\n1;2'), equals(3));
    });

    test('Multiple negative numbers in exception', () {
      expect(() => add('1,-2,-3,4'), throwsA(predicate((e) =>
      e is Exception && e.toString().contains('negative numbers not allowed -2,-3'))));
    });

  });
}
