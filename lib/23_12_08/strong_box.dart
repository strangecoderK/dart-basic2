enum KeyType {
  padlock,
  button,
  dial,
  finger,
}

class StrongBox<E> {
  E? _data;
  KeyType keyType;

  StrongBox(this._data, this.keyType);

  void put(E data) {
    _data = data;
  }

  E? get() => _data;
}
