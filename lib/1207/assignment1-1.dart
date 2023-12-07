// Comparable 인터페이스를 활용한 경우


class Book implements Comparable<Book> {
  String title;
  DateTime publishDate = DateTime.now();
  String comment;

  Book({
    required this.title,
    required this.publishDate,
    required this.comment,
  });

  @override
  int compareTo(Book other) {
    // 출간일을 기준으로 비교
    return publishDate.compareTo(other.publishDate);
  }

  @override
  String toString() {
    return 'Book{publishDate: $publishDate, comment: $comment}';
  }

}

void main() {
  Book book1 =
  Book(title: '백년목', publishDate: DateTime(2023, 11, 1), comment: '흥미로움');
  Book book2 =
  Book(title: '백년목', publishDate: DateTime(2023, 12, 7), comment: '유익함');

  final bookList = [book1, book2];
  // bookList.sort(); // Comparable을 구현했기 때문에 별도의 비교 함수를 지정할 필요 없음
  bookList.sort((a, b) => b.compareTo(a)); // 역순
  print(bookList);
}