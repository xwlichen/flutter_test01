import 'package:flutter/material.dart';
import 'package:flutter_test01/widget/image_text_view.dart';
import 'package:flutter_test01/widget/toast.dart';


void main() => runApp(MyApp());

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
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  TextStyle style = new TextStyle();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: Text("标题标题", style: style),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        elevation: 5.0,
        backgroundColor: Color(0xFF1F92E8),
      ),
      body: new Container(
        child: new Column(
//            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new Text("正文标题正文标",
                  style: new TextStyle(fontSize: 30),
                  softWrap: false,
                  overflow: TextOverflow.fade),
              new Text(
                "正文",
                style: new TextStyle(fontSize: 16),
              ),
              new Builder(builder: (BuildContext context) {
                return new RaisedButton(
                    onPressed: () {
                      Toast.toast(context,"tishi");

//-----------------------------------------------------------
                      //值得注意的是这个context必须不能是Scaffold节点下的context,因为Scaffold.of（）
                      // 方法需要从Widget树中去找到Scaffold的Context，所以如果直接在Scaffold中使用showSnackBar，
                      // 需要在外城包括上Builder Widget，这个Builder不做任何的其他操作，只不过把Widget树往下移了一层而已。
//                       Scaffold.of(context).showSnackBar(new SnackBar(
//                         content: new Text("SanckBar is Showing "),
//                         action: new SnackBarAction(
//                             label: "撤销",
//                             onPressed: () {
//                               print("点击撤回---------------");
//                             }),
//                       ));
//-----------------------------------------------------------

//                      showDialog(
//                          context: context,
//                          child: new SimpleDialog(
//                            title: new Text("标题"),
//                            contentPadding: const EdgeInsets.all(10.0),
//                            children: <Widget>[
//                              //SimpleDialog内可指定多个children
//                              new Text("文字内容1"),
//                              new ListTile(
//                                leading: new Icon(Icons.android),
//                                title: new Text("android"),
//                              ),
//
//                              new Text("文字内容2"),
//                              new Text("文字内容3"),
//                              new Text("文字内容4"),
//                            ],
//                          ));

//-----------------------------------------------------------

//                      showDialog(
//                          context: context,
//                          child: new AlertDialog(
//                            title: new Text("标题"),
//                            content: new Text("内容区域"),
//                            actions: <Widget>[
//                              new FlatButton(
//                                  onPressed: () {
//                                    Navigator.of(context);
//                                  },
//                                  child: new Text("确定")),
//                              new FlatButton(
//                                  onPressed: () {
//                                    print("点击取消------");
//                                  },
//                                  child: new Text("取消")),
//                            ],
//                          ));

//                      showBottomSheet(
//                          context: context,
//                          builder: (BuildContext context) {
//                            return new Container(
//                              child: new Padding(
//                                padding: const EdgeInsets.all(10.0),
//                                child: new Column(
//                                  children: <Widget>[
//                                    new ListTile(
//                                      leading: new Icon(Icons.chat),
//                                      title: new Text("对话框列表1"),
//                                    ),
//                                    new ListTile(
//                                      leading: new Icon(Icons.help),
//                                      title: new Text("对话框列表2"),
//                                    ),
//                                    new ListTile(
//                                      leading: new Icon(Icons.settings),
//                                      title: new Text("对话框列表3"),
//                                    ),
//                                    new ListTile(
//                                      leading: new Icon(Icons.more),
//                                      title: new Text("对话框列表4"),
//                                    ),
//                                  ],
//                                ),
//                              ),
//                            );
//                          });
//-----------------------------------------------------------
//                      showModalBottomSheet(
//                          context: context,
//                          builder: (BuildContext context) {
//                            return new Container(
//                              child: new Padding(
//                                padding: const EdgeInsets.all(10.0),
//                                child: new Column(
//                                  children: <Widget>[
//                                    new ListTile(
//                                      leading: new Icon(Icons.chat),
//                                      title: new Text("对话框列表1"),
//                                    ),
//                                    new ListTile(
//                                      leading: new Icon(Icons.help),
//                                      title: new Text("对话框列表2"),
//                                    ),
//                                    new ListTile(
//                                      leading: new Icon(Icons.settings),
//                                      title: new Text("对话框列表3"),
//                                    ),
//                                    new ListTile(
//                                      leading: new Icon(Icons.more),
//                                      title: new Text("对话框列表4"),
//                                    ),
//                                  ],
//                                ),
//                              ),
//                            );
//                          });
//-----------------------------------------------------------
//-----------------------------------------------------------
//-----------------------------------------------------------
//-----------------------------------------------------------
                    },
                    child: new ImageTextView());
              }),
              new ImageTextView(),
              new ImageTextView(),
              new Image(image: new AssetImage('static/images/welcome.png')),
            ]),
        color: Colors.blue,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
