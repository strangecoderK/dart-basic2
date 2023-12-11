import 'dart:io';

void copy(String source, String target) {
  File file = File(source);
  File copyFile = File(target);
  var text = file.readAsStringSync();
  copyFile.writeAsStringSync(text);
}

void main() {
  copy('/Users/kimdahee/StudioProjects/untitled/lib/23_12_11/first.txt',
      './lib/23_12_11/copy.txt');
}
