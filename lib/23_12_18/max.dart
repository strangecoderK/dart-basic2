import 'dart:math';

int findMax (List<int> numbers){
  return numbers.reduce((a, b) => max(a, b));
}