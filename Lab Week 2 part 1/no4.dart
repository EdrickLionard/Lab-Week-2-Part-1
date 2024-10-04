class Book {
  String title;
  String author;
  int year;

  Book(this.title, this.author, this.year);

  void displayInfo() {
    print('Judul: $title, Penulis: $author, Tahun: $year');
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print('Buku "${book.title}" telah ditambhakan ke perpustakaan');
  }

  void removeBook(String title) {
    books.removeWhere((book) => book.title == title);
    print('Buku berjudul "$title" telah dihapus dari perpustakaan');
  }

  void displayBooks() {
    if (books.isEmpty) {
      print('Perpustakaan kosong');
    } else {
      print('Daftar buku di perpustakaan: ');
      for (var book in books) {
        book.displayInfo();
      }
    }
  }
}

void main() {
  Library library = Library();

  library.addBook(Book('Naruto', 'Onepiece', 1995));
  library.addBook(Book('Mario', 'Maria', 1954));
  library.addBook(Book('Deutshc', 'Plhamingo', 1925));

  library.displayBooks();

  library.removeBook('Naruto');

  library.displayBooks();
}
