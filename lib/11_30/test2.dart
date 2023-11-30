void main(){
  numbers(30,15);
  numbers(12,40);

}

void numbers(int a, int b){
  if(a%2==0 && b%2==0){
    print('NO');
  }else if(a%2==1 && b%2==1){
    print('NO');
  }else{print('YES');}

}