String reverseString(String string){
  final text = string.split('');
  return text.reversed.join();
}
// void main(){
//   print(reverseString('hello'));
// }