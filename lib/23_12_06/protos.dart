abstract class Protoss extends Tribe {
  Protoss({required int sheild}) : this._sheild = sheild;

  int _sheild;

  // shield를 외부에서 접근하여 건드리게되면 setter body부분 통해서 autoShieldRecovery 실행
  set shield(int value) {
    if (value != 0) autoShieldRecovery();
  }

  void autoShieldRecovery() async {
    // 테스트코드입니다.
    Timer timer = Timer.periodic(Duration(milliseconds: 500), (timer) {
      print('실드 자동 회복 수행(${timer.tick})'); // _shield에 접근하여 수행
    });
    await Future.delayed(Duration(seconds: 3));
    timer.cancel();
  }
}