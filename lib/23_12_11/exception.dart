/*void main() {
  final numString = '10.5';

  try {
    int num = int.parse(numString);
  } catch (e) {
    print(0);
  }
}*/

void main() {
  final numString = '10';

  int num;
  try {
    num = int.parse(numString);
  } catch (e) {
    num = 0;
  }
  print(num);
}
