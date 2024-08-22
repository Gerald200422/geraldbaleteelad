import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hello BMC Flutter",
        home: Scaffold(
           appBar: AppBar(title: Text('Hello BMC Flutter'),
            backgroundColor: Colors.deepOrange,
        ),
        body:Builder(builder:(context)=> Center (
            child: Column(children: [
              Text(
              'Hello Flutter',
               style: TextStyle(
               fontSize: 26,
               fontWeight: FontWeight.bold,
               color: Colors.blue[900]),
               ),

             Text(
               'Discover the Flutter',
                style: TextStyle(fontSize: 20, color: Colors.deepPurpleAccent),
               ),

              Image.network('https://4.bp.blogspot.com/_4U_4wkOg9F8/TPl78vEOm8I/AAAAAAAATPg/EqnwbXSCWLk/s1600/001.jpg',
              height: 350,
              ),
              ElevatedButton(
                child: Text('Contact Us'),
                onPressed: () => contactUs(context),
              )

            ]
             )))));
      }
  }


  void contactUs(BuildContext context) {
      showDialog(context: context,
      builder: (BuildContext)
      {
        return AlertDialog(
          title: Text('Contact Us'),
          content: Text('Mail us at geraldartistmanagement.com'),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
       }
       );
}
