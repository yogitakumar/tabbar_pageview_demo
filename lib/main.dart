import 'package:flutter/material.dart';
import 'package:tabbar_pageview_demo/Screens/Achivement.dart';
import 'package:tabbar_pageview_demo/Screens/MarksheetPage.dart';
import 'package:tabbar_pageview_demo/Screens/WorkExperience.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home://TabBarDemo(),
      MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

/*class TabBarDemo extends StatefulWidget {
  @override
  _TabBarDemoState createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar Demo"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(child:Text("A")),
              Tab(child:Text("B")),
              Tab(child:Text("C")),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(child: Text("A",)),
            Center(child: Text("B")),
            Center(child: Text("C")),
          ],
        ),
      ),
    );
  }
}*/


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  TabController _tabController;
  IconData fabIcon;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this)..addListener(() {
      setState(() {
        switch(_tabController.index){
          case 0:
            break;
          case 1:
            fabIcon=Icons.message;
            break;
          case 2:
            fabIcon = Icons.camera_enhance;
            break;

        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
       title:Text("My Records"),
        bottom: TabBar(
          unselectedLabelColor: Colors.white,
          labelColor: Colors.amber,
          tabs: <Widget>[

            new Tab(
              child:
              Text("Marksheets", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            new Tab(
              child: Text("Achivements",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            new Tab(
              child: Text("Work Experience",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
          controller: _tabController,
          indicatorColor: Colors.white,
          // indicatorSize: TabBarIndicatorSize.tab,
        ),
        bottomOpacity: 1,
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Marksheet(),
          Achivement(),
          WorkExperince(),

        ],
      ),
    );
  }
}
