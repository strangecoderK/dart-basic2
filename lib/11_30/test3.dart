void main(){

 var result = pages('모두연', '010','1234', '5678' );
  print(result);
}
String pages(String name, String a, String b, String c){
  return name+':'+a+'-'+b+'-'+c;
}