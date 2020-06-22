import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget cupertinoPageScaffold() => CupertinoPageScaffold(
        child: Center(
          child: Text("Hello Cupertino Ios"),
        ),
        navigationBar: CupertinoNavigationBar(
          leading: Icon(CupertinoIcons.back),
          middle: Text("Cupertino"),
          trailing: Icon(CupertinoIcons.search),
        ),
      );
      //---------------------------------------
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoTabScaffold(
//         tabBar: CupertinoTabBar(items: [
//           BottomNavigationBarItem(
//               icon: Icon(CupertinoIcons.phone), title: Text("Phone")),
//           BottomNavigationBarItem(
//               icon: Icon(CupertinoIcons.conversation_bubble),
//               title: Text("Phone")),
//         ]),
//         tabBuilder: (context, i) => CupertinoPageScaffold(
//               child: Center(
//                 child: i == 0 ? Text("Phone") : Text("Chat"),
//               ),
//             ));
//   }
// }

//----------------------------------------------------------


  Widget cupertinoTabScaffold() => CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.phone), title: Text("Phone")),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.conversation_bubble),
              title: Text("Phone")),
        ]),
        tabBuilder: (context, i) => CupertinoPageScaffold(
              child: Center(
                child: i == 0 ? Text("Phone") : Text("Chat"),
              ),
            ));
 @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text("Chats"),
          ),
          SliverFillRemaining(
            child: Center(
              child: Text("WhatsApp"),
            ),
          )
        ],
      )
      );
  }
}
