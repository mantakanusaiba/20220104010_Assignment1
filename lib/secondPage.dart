import 'package:flutter/material.dart';
import 'book.dart';
class SecondPage extends StatelessWidget {
  final Book book;
  @override
  SecondPage({required this.book});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          'Buy Now',
          style: TextStyle(
            fontFamily: 'Pacifico',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Book Name: ${book.bookName}',
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'Pacifico',
              ),
            ),
            Image.asset(book.imagePath, height: 200.0),
            Text(
              'Author: ${book.authorName}',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  color:Colors.lightBlue,
                  fontSize: 16.0),
            ),
            Text(
              'Rating: ${book.rating}',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 16.0),
            ),
            Text(
              'Short Description: ${book.shortDescription}',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 16.0),
            ),
            Text(
              'Price: ${book.price.toStringAsFixed(2)}',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Select Number of Books: ', style: TextStyle(
                    fontFamily: 'Pacifico',
                    color:Colors.cyan,
                    fontSize: 16.0)),
                DropdownButton(
                  value: '1',
                  items: [DropdownMenuItem<String>(
                      child: Text('1', style: TextStyle(
                fontFamily: 'Pacifico',
                    fontSize: 16.0)
                      ),
                      value: '1'),

                    DropdownMenuItem<String>(
                        child: Text('2',style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 16.0)
                        ),
                        value: '2'), ],
                  onChanged: (value) {print("Number of Books $value");},
                ),
              ],
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back',
                  style: TextStyle(
                  fontSize: 12.0,
                   fontFamily: 'Pacifico',
                  ),
               ),
              ),
          ],
        ),
      ),
    );
  }
}
