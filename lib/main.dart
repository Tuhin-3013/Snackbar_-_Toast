import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyhomePage(),
    );
  }
}
class MyhomePage extends StatefulWidget {
  const MyhomePage({super.key});

  @override
  State<MyhomePage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // this container used in Snackbar.
              Text("Snackbar"),
              Container(
                padding: EdgeInsets.only(bottom: 29),
                child: Center(
                  child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("I am snackbar"),
                          duration: Duration(seconds: 10),
                          action: SnackBarAction(
                              label: "ok",
                              onPressed: () {}
                          ),
                        )
                        );
                      },
                      child: Text("Click"),
                    ),
                ),

              ),

              //this container used in toast
              Text("Toast"),
              Container(
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                     Fluttertoast.showToast(msg: "Easy Explanation",
                       toastLength: Toast.LENGTH_LONG,
                       backgroundColor: Colors.green,
                       textColor: Colors.white
                     );

                    },
                    child: Text("Click"),
                  ),
                ),
              )
            ],
          ),

        )
    );
  }
}
