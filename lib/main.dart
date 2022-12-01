import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.50),
        child: AppBar(
          title: Text('メニュー',style: TextStyle(fontSize: 25),),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.contacts, size: 40,),
              onPressed: () {}, )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 100,),
          Container(
            width: double.infinity,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width: 120,
                  height: 100,
                  child:ElevatedButton(onPressed: () {}, child: Text('アカウント'),
                  ),
                ),
                SizedBox(
                  width: 120,
                  height: 100,
                  child: ElevatedButton(onPressed: () {}, child: Text('連携'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 100,),
          Container(
            width: double.infinity,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width: 120,
                  height: 100,
                  child: ElevatedButton(onPressed: () {}, child: Text('家計簿'),
                  ),
                ),
                SizedBox(
                  width: 120,
                  height: 100,
                  child: ElevatedButton(onPressed: () {
                    showCupertinoDialog(context: context, builder: (context) {
                      return CupertinoAlertDialog(
                        title: Text('確認'),
                        content: Text('ログアウトしてもよろしいでしょうか。'),
                        actions: [
                          CupertinoDialogAction(
                            isDestructiveAction: true,
                            child: Text('キャンセル'),
                            onPressed: () {Navigator.pop(context);},
                          ),
                          CupertinoDialogAction(
                            child: Text('ログアウト'),
                            onPressed: () {Navigator.pop(context);},
                          ),
                        ],
                      );
                    },
                    );
                  }, child: Text('ログアウト'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 80,),
          SizedBox(
            width: 130,
            height: 60,
            child: ElevatedButton(onPressed: () {}, child: Text('アカウント削除'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:() {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
