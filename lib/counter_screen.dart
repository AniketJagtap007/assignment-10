import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int result= 0;
  @override
  Widget build(BuildContext context) {
    print("Calling build method");
    return  Scaffold(
      body: SafeArea(child:
      Center(child:
      Container( color: Colors.deepPurpleAccent,
        child: Column(
            children: [
              //First Container
            Container( color:Colors.deepOrange,
              height: 200, width: 300,
              child: Center(
                child: Text
                          ( "$result", style:TextStyle
                  (fontSize: 50, fontWeight: FontWeight.w800,),),
              ),
            ),
            SizedBox(height:200),

            Container(
                color:Colors.deepOrange,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    print("Add button clicked");
                    result= result+1;
                    print(result);
                    setState(() {

                    });
                  }, child: Text("Add"),
                  ),
                  Container(height:50.0, width:30.0),
                  ElevatedButton(onPressed: (){
                    print("Minus button clicked");
                    result= result-1;
                    print(result);
                    setState(() {

                    });
                  }, child: Text("Minus"),
                  ),
                ],),






            )
          ],),
      )
      )
    ));

    return const Placeholder();
  }
}
