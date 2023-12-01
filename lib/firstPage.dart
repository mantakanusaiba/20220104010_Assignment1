import 'package:flutter/material.dart';
import 'secondPage.dart';
import 'book.dart';

class FirstPage extends StatelessWidget {
  final List<Book> books = [
    Book(
      bookName: 'Sapiens',
      authorName: 'Yuval Noah Harari',
      imagePath: 'images/book.jpg',
      rating: 4.3,
      shortDescription:
      'The book, focusing on Homo sapiens, surveys the history of humankind, starting from the Stone Age and going up to the twenty-first century.',
      price: 590.99,
    ),
    Book(
      bookName: 'The Book Thief',
      authorName: 'Markus Zusak',
      imagePath: 'images/book2.jpg',
      rating: 4.6,
      shortDescription:
      'The Book Thief is a story narrated by a compassionate Death who tells us about Liesel, a girl growing up in Germany during World War II.',
      price: 690.99,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          "Book List",
          style: TextStyle(
            fontFamily: 'Pacifico',
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: books.map((book) => buildBookCard(context, book)).toList(),
      ),
    );
  }

  Widget buildBookCard(BuildContext context, Book book) {
    return Card(
      margin: EdgeInsets.all(20.0),
      color: Colors.cyanAccent[100],
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(book.imagePath, height: 100.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Book Name : ${book.bookName}',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontFamily: 'Pacifico',
                      ),
                    ),
                    Text(
                      'Author Name : ${book.authorName}',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontFamily: 'Pacifico',
                      ),
                    ),
                    Text(
                      'Rating : ${book.rating}',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontFamily: 'Pacifico',
                      ),
                    ),
                    Row(
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SecondPage(book: book),
                              ),
                            );
                          },
                          icon: Icon(Icons.shopping_cart),
                          label: Text(
                            'Buy Now',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontFamily: 'Pacifico',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
