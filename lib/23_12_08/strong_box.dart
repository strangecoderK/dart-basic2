enum KeyType {
  padlock,
  button,
  dial,
  finger,
}

int initialCount(KeyType keyType) {
  switch (keyType) {
    case KeyType.padlock:
      return 1024;
    case KeyType.button:
      return 10000;
    case KeyType.dial:
      return 30000;
    case KeyType.finger:
      return 1000000;
  }
}

class StrongBox<E> {
  E? _item;
  KeyType keyType;
  int count;

  StrongBox(this.keyType) : count = initialCount(keyType);

  void put(E item) {
    _item = item;
  }

  E? get() {
    if (count > 0) {
      count--;
      return null;
    } else {
      return _item;
    }
  }
}

void main() {
  StrongBox<String> strongBox = StrongBox(KeyType.button);
  strongBox.put("획득");

  for (int i = 0; i < 10010; i++) {
    dynamic result = strongBox.get();
    if (result == null) {
      print(" ${strongBox.count}회 남음. 접근불가");
    } else {
      print(result);
      break;
    }
  }
}
