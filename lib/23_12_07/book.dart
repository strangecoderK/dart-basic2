class Book {
  String title;
  DateTime publishDate = DateTime.now();
  String comment;

  Book({
    required this.title,
    required this.publishDate,
    required this.comment,
  });

  @override
  String toString() {
    return 'Book{title:$title,publishDate:$publishDate,comment:$comment}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          publishDate == other.publishDate;

  @override
  int get hashCode => title.hashCode ^ publishDate.hashCode;
}

void main() {
  final books = <Book>{};
  Book book1 = Book(
      title: 'twilight', publishDate: DateTime(2023, 12, 07), comment: 'good');
  Book book2 = Book(
      title: 'twilight', publishDate: DateTime(2023, 12, 07), comment: 'good');
  print(book1);
  print(book2);
  print(book1 == book2);

  books.add(book1);
  print(books.length);

  books.add(book2);
  print(books.length);
}
