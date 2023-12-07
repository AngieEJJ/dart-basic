/*
다음 동작을 할 수 있도록 Book 클래스를 수정하시오.
1. 제목과 출간일이 같으면 같은 책으로 판단한다.
2. 또한 Set 에 넣으면 동일 객체로 판단한다.
3. Book 인스턴스를 담고 있는 컬렉션에 대해 sort() 를 수행하여 출간일이 오래된 순서대로 정렬한다.
4. deep copy 를 지원한다
 */


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
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          publishDate == other.publishDate;

  @override
  int get hashCode => title.hashCode ^ publishDate.hashCode; // 타이틀이랑 publish랑 같으면 같은 해쉬코드 (XOR연산)

  @override
  String toString() {
    return 'Book{publishDate: $publishDate, comment: $comment}';
  }

  Book copyWith({
    String? title,
    DateTime? publishDate,
    String? comment,
  }) {
    return Book(
      title: title ?? this.title,
      // title 값이 제공되면 해당 값을 사용하고, 그렇지 않으면 기존 객체의 title 값을 사용
      publishDate: publishDate ?? this.publishDate,
      comment: comment ?? this.comment,
    );
  }
}

void main() {
  // 1. 제목과 출간일이 같으면 같은 책으로 판단한다.
  Book book1 =
      Book(title: '백년목', publishDate: DateTime(2023), comment: '재미');
  Book book2 =
      Book(title: '백년목', publishDate: DateTime(2022), comment: '흥미');

  // print(book1 == book2); //true

// 2. Set 에 넣으면 동일 객체로 판단한다.
  final books = {book1, book2};
  // print(books); // 한개만 출력

// 3. Book 인스턴스를 담고 있는 컬렉션에 대해 sort() 를 수행하여 출간일이 오래된 순서대로 정렬한다.
  final bookList = [book1, book2];
  bookList.sort((a, b) => a.publishDate.compareTo(b.publishDate));
  // print(bookList); // 2022 먼저 출력

// 4. deep copy 를 지원한다
  Book originalBook =
      Book(title: '원본', publishDate: DateTime(2022), comment: '동일멘트');
  Book copiedBook = originalBook.copyWith(
      title: '원본', publishDate: DateTime(2022), comment: '동일멘트');

  print(originalBook.hashCode);
  print(copiedBook.hashCode);
  // 이 코드를 주석처리 해야 함 -> int get hashCode => title.hashCode ^ publishDate.hashCode;
}
