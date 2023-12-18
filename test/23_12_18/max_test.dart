import 'package:test/test.dart';
import 'package:untitled/23_12_18/max.dart';

void main(){

  test('가장 큰 수', () {
  expect(findMax([1,8,5,3]), 8);
  expect(findMax([11,4,3,8]),11);
  });
}