import "package:flutter/foundation.dart";
import"package:flutter/material.dart";
import "package:flutterdraw/newpage.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
home: HomePage(),
// routes: <String, WidgetBuilder>{
//   "/a" : (BuildContext context) => NewPage("New Page"), 
// }


    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.android? 5.0: 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Saurav Kunwar"),
              accountEmail: Text("Saurav@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.pink,
                child: Text("S"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.pink,
                child: Text("S"),

                )
              ],
            ),
            ListTile(
              title: Text("Page One"),
              trailing: Icon(Icons.arrow_upward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push( MaterialPageRoute(builder: (BuildContext context)=> NewPage("Page 1")));
                
              },      
            ),
            Divider(),
            ListTile(
              title: Text("Page two"),
              trailing: Icon(Icons.arrow_downward),  
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push( MaterialPageRoute(builder: (BuildContext context)=> NewPage("Page 2")));
                
              },   
            ),
            Divider(),
            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),   
              onTap: () => Navigator.of(context).pop(),
            ),
            
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Text("Home Page"),
        )
      ),
    );
  }
}