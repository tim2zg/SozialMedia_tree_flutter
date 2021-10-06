import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sozial Media',
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
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(title: 'Sozial Media'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Column(
            children: <Widget>[
              Container(child: Column(children: [
                Container(
                  width: 300.0,
                  height: 250.0,
                  margin: const EdgeInsets.all(10.0),
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),),
                SizedBox(height: 20),
                Text(
                  'Your Username',
                  style: GoogleFonts.anton(
                    textStyle: TextStyle(color: Colors.white, letterSpacing: .5, fontSize: 40),
                  ),),
                SizedBox(height: 50,),
              ],),),
              Expanded(
                  child: Center(child: SizedBox(width:150, child: ListView(
                    children: [
                      ButtonTheme(
                        child: OutlinedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: BorderSide(width: 7, color: Colors.blue),
                                ),
                              ),side: MaterialStateProperty.all(BorderSide(width: 2.0, color: Colors.purpleAccent))
                          ),
                          onPressed: () => _launchURL("https://www.youtube.com/watch?v=dQw4w9WgXcQ"),
                          child: Column( // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(FontAwesomeIcons.instagram, color: Colors.purpleAccent, size: 80),
                              SizedBox(height:  5),
                              FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text('Instagram', style: TextStyle(fontSize: 20, color: Colors.white),),
                              ),
                            ],
                          ),
                        ),),
                      SizedBox(height: 25,),
                      ButtonTheme(
                        child: OutlinedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: BorderSide(width: 7, color: Colors.blue),
                                ),
                              ),side: MaterialStateProperty.all(BorderSide(width: 2.0, color: Colors.orange))
                          ),
                          onPressed: () => _launchURL("https://www.youtube.com/watch?v=dQw4w9WgXcQ"),
                          child: Column( // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(FontAwesomeIcons.reddit, color: Colors.orange, size: 80),
                              SizedBox(height:  5),
                              FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text('Reddit', style: TextStyle(fontSize: 20, color: Colors.white),),
                              ),
                            ],
                          ),
                        ),),
                      SizedBox(height: 25,),
                      ButtonTheme(
                        child: OutlinedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: BorderSide(width: 7, color: Colors.blue),
                                ),
                              ),side: MaterialStateProperty.all(BorderSide(width: 2.0, color: Colors.black))
                          ),
                          onPressed: () => _launchURL("https://www.youtube.com/watch?v=dQw4w9WgXcQ"),
                          child: Column( // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(FontAwesomeIcons.tiktok, color: Colors.white, size: 80),
                              SizedBox(height:  5),
                              FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text('Tiktok', style: TextStyle(fontSize: 20, color: Colors.white),),
                              ),
                            ],
                          ),
                        ),),
                      SizedBox(height: 25,),
                      ButtonTheme(
                        child: OutlinedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: BorderSide(width: 7, color: Colors.blue),
                                ),
                              ),side: MaterialStateProperty.all(BorderSide(width: 2.0, color: Colors.blue))
                          ),
                          onPressed: () => _launchURL("https://www.youtube.com/watch?v=dQw4w9WgXcQ"),
                          child: Column( // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(FontAwesomeIcons.twitter, color: Colors.blue, size: 80),
                              SizedBox(height:  5),
                              FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text('Twitter', style: TextStyle(fontSize: 20, color: Colors.white),),
                              ),
                            ],
                          ),
                        ),),
                      SizedBox(height: 25,),
                      ButtonTheme(
                        child: OutlinedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: BorderSide(width: 7, color: Colors.white),
                                ),
                              ),side: MaterialStateProperty.all(BorderSide(width: 2.0, color: Colors.black))
                          ),
                          onPressed: () => _launchURL("https://www.youtube.com/watch?v=dQw4w9WgXcQ"),
                          child: Column( // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(FontAwesomeIcons.unsplash, color: Colors.white, size: 80),
                              SizedBox(height:  5),
                              FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text('Unsplash', style: TextStyle(fontSize: 20, color: Colors.white),),
                              ),
                            ],
                          ),
                        ),),
                      SizedBox(height: 25,),
                      ButtonTheme(
                        child: OutlinedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: BorderSide(width: 7, color: Colors.red),
                                ),
                              ),side: MaterialStateProperty.all(BorderSide(width: 2.0, color: Colors.red))
                          ),
                          onPressed: () => _launchURL("https://www.youtube.com/watch?v=dQw4w9WgXcQ"),
                          child: Column( // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(FontAwesomeIcons.pinterest, color: Colors.red, size: 80),
                              SizedBox(height:  5),
                              FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text('Pinterest', style: TextStyle(fontSize: 20, color: Colors.white),),
                              ),
                            ],
                          ),
                        ),),
                      SizedBox(height: 25,),
                      ButtonTheme(
                        child: OutlinedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: BorderSide(width: 7, color: Colors.red),
                                ),
                              ),side: MaterialStateProperty.all(BorderSide(width: 2.0, color: Colors.yellow))
                          ),
                          onPressed: () => _launchURL("https://www.youtube.com/watch?v=dQw4w9WgXcQ"),
                          child: Column( // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(FontAwesomeIcons.snapchat, color: Colors.yellow, size: 80),
                              SizedBox(height:  5),
                              FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text('Snapchat', style: TextStyle(fontSize: 20, color: Colors.white),),
                              ),
                            ],
                          ),
                        ),),
                      SizedBox(height: 25,),
                      ButtonTheme(
                        child: OutlinedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: BorderSide(width: 7, color: Colors.blue),
                                ),
                              ),side: MaterialStateProperty.all(BorderSide(width: 2.0, color: Colors.blue))
                          ),
                          onPressed: () => _launchURL("https://www.youtube.com/watch?v=dQw4w9WgXcQ"),
                          child: Column( // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(FontAwesomeIcons.discord, color: Colors.blue, size: 80),
                              SizedBox(height:  5),
                              FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text('Discord', style: TextStyle(fontSize: 20, color: Colors.white),),
                              ),
                            ],
                          ),
                        ),),
                      SizedBox(height: 25,),
                      ButtonTheme(
                        child: OutlinedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: BorderSide(width: 7, color: Colors.red),
                                ),
                              ),side: MaterialStateProperty.all(BorderSide(width: 2.0, color: Colors.black))
                          ),
                          onPressed: () => _launchURL("https://www.youtube.com/watch?v=dQw4w9WgXcQ"),
                          child: Column( // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(FontAwesomeIcons.github, color: Colors.white, size: 80),
                              SizedBox(height:  5),
                              FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text('Github', style: TextStyle(fontSize: 20, color: Colors.white),),
                              ),
                            ],
                          ),
                        ),),
                      SizedBox(height: 25,),
                      ButtonTheme(
                        child: OutlinedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: BorderSide(width: 7, color: Colors.red),
                                ),
                              ),side: MaterialStateProperty.all(BorderSide(width: 2.0, color: Colors.green))
                          ),
                          onPressed: () => _launchURL("https://www.youtube.com/watch?v=dQw4w9WgXcQ"),
                          child: Column( // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(FontAwesomeIcons.whatsapp, color: Colors.green, size: 80),
                              SizedBox(height:  5),
                              FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text('Whatsapp', style: TextStyle(fontSize: 20, color: Colors.white),),
                              ),
                            ],
                          ),
                        ),),
                      SizedBox(height: 25,),
                    ],
                  ),),)
              ),
            ]
        )
    );
  }
}

_launchURL(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}