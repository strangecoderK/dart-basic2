Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6));
  return 'ok';
}

void main() {
  Duration timeoutDuration = Duration(seconds: 5);

  timeoutFuture().timeout(timeoutDuration, onTimeout: () {
    print('타임아웃입니다');
    return '타임아웃';
  }).then((result) {
    print('결과: $result');
  }).catchError((error) {
    print('오류: $error');
  });
}
