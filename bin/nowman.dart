class Book {
  Map<String, dynamic> details = {};
  static int totalBooks = 0;

  Book(String title, String author, int publicationYear) {
    details = {
      'title': title,
      'author': author,
      'publicationYear': publicationYear,
      'pagesRead': 0,
    };
    totalBooks++;
  }

  void read(int pages) {
    if (pages > 0) details['pagesRead'] += pages;
  }

  int get pagesRead => details['pagesRead'];
  String get title => details['title'];
  String get author => details['author'];
  int get publicationYear => details['publicationYear'];
  int get bookAge => DateTime.now().year - (details['publicationYear'] as int);
}

void main() {
  var book1 = Book("1984", "George Orwell", 1949);
  var book2 = Book("To Kill a Mockingbird", "Harper Lee", 1960);
  var book3 = Book("The Great Gatsby", "F. Scott Fitzgerald", 1925);

  book1.read(50);
  book2.read(30);
  book3.read(75);

  for (var book in [book1, book2, book3]) {
    print("Title: ${book.title}, Author: ${book.author}, "
        "Year: ${book.publicationYear}, Pages Read: ${book.pagesRead}, "
        "Age: ${book.bookAge} years");
  }

  print("Total books created: ${Book.totalBooks}");
}
