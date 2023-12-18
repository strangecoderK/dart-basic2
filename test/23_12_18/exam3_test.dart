import 'package:test/test.dart';
import 'package:untitled/23_12_18/exam3.dart';

void main(){
  test('문자열을 뒤집어 반환', () {

    expect(reverseString('hello World'), 'dlroW olleh');
    expect(reverseString('Hi'),'iH');
  });
}