import 'package:test/test.dart';
import 'package:untitled/23_12_18/even.dart';

void main() {
  test('짝수는 true', () {
    expect(isEven(2), true);
    expect(isEven(3), false);
  });
}
