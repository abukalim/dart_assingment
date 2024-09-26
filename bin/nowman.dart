class Book {
  // Properties
  String title;
  String author;
  int publicationYear;
  int pagesRead = 0;

  // Static property to keep track of total books created
  static int totalBooks = 0;

  // Constructor
  Book(this.title, this.author, this.publicationYear) {
    totalBooks++; // Increment totalBooks whenever a new Book object is created
  }

  // Method to add pages read
  void read(int pages) {
    if (pages > 0) {
      pagesRead += pages;
    } else {
      print("Pages read should be a positive number.");
    }
  }

  // Getter methods
  int getPagesRead() => pagesRead;
  String getTitle() => title;
  String getAuthor() => author;
  int getPublicationYear() => publicationYear;

  // Method to calculate book age
  int getBookAge() {
    int currentYear = DateTime.now().year; // Get the current year
    return currentYear - publicationYear;
  }
}

void main() {
  // Creating three Book objects
  Book book1 = Book("1984", "George Orwell", 1949);
  Book book2 = Book("To Kill a Mockingbird", "Harper Lee", 1960);
  Book book3 = Book("The Great Gatsby", "F. Scott Fitzgerald", 1925);

  // Simulating reading pages for each book
  book1.read(50);
  book2.read(30);
  book3.read(75);

  // Printing book details and their ages
  List<Book> books = [book1, book2, book3];
  for (var book in books) {
    print("Title: ${book.getTitle()}");
    print("Author: ${book.getAuthor()}");
    print("Publication Year: ${book.getPublicationYear()}");
    print("Pages Read: ${book.getPagesRead()}");
    print("Book Age: ${book.getBookAge()} years\n");
  }

  // Displaying total number of Book objects created
  print("Total number of books created: ${Book.totalBooks}");
}
