import 'dart:io';

void main() {
  copy('sample.txt', 'sample_copy.txt');
}

Future copy(String source, String target) async {
  final firstFile = File(source);
  final copyFile = File(target);
  try {
    var text = await firstFile.readAsString();
    copyFile.writeAsString(text.replaceAll('한석봉', '김석봉'));
    print('파일을 변경했습니다.');
  } catch (e) {
    print('파일을 찾을 수 없습니다.');
  }
}
