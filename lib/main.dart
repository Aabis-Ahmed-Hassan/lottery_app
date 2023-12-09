import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
 MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x = 0;
  Random r1 = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:x==5 ? Colors.teal : Colors.red,
          title: const Center(
            child: Text('Lottery App' , style: TextStyle(color: Colors.white , fontWeight: FontWeight.w500)),
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(child: Text('Lottery winning number is 5. ' , style:TextStyle(fontSize:20,),)),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 250,
                width: 250,
                decoration:BoxDecoration(
                  color:Colors.grey.withOpacity(.3),
                  borderRadius:BorderRadius.circular(15),
                ),
                child: x==5 ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.done_all , color:Colors.green , size:50),
                    const SizedBox(height: 10,),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:

                        [
                          const Text('Your number is ' , style:TextStyle(fontSize:20)),
                          Text(x.toString() , style:const  TextStyle(fontSize:20 , fontWeight:  FontWeight.w600)),

                        ]
                    ),
                    const Text('You have won the lottery. ' , style:TextStyle(fontSize:20),textAlign: TextAlign.center,),

                  ],
                ):Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.dangerous , color:Colors.red , size:50),
                    const SizedBox(height: 10,),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:

                    [
                      const Text('Your number is ' ,style:TextStyle(fontSize: 20),),
                    Text(x.toString() , style: const TextStyle(fontSize:20 , fontWeight:  FontWeight.w600)),

                    ]
                    ),
                    const Text('Better Luck Next Time. ',style:TextStyle(fontSize:20) , textAlign: TextAlign.center,),

                  ],
                )
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = r1.nextInt(6);
            setState((){});
          },
          backgroundColor: x==5 ? Colors.teal : Colors.red,
          child: const Icon(Icons.refresh , color: Colors.white),
        )
      ),
    );
  }
}
