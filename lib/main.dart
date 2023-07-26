import 'package:flutter/material.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

   var pluscontroller= TextEditingController();
   var minuscontroller= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      home: Scaffold(
         appBar: AppBar(
           title: Text('calculator'),
         ),
        body: Column(
          children: [

            SizedBox(
              height: 20,
            ),


            TextField(
              controller: pluscontroller,
              decoration: InputDecoration(

                label: Text("please enter value 1"),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.blue,
                    )
                ) ,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.redAccent,
                  )
                )

              ),
            ),


            SizedBox(
              height: 20,
            ),

            TextField(

              controller: minuscontroller,
              decoration: InputDecoration(

                  label: Text("please enter value 2"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.blue,
                      )
                  ) ,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.redAccent,
                      )
                  )

              ),
            ),

SizedBox(
  height: 20,
),
            Row(

               children: [

                 SizedBox(
                   width: 50,

                 ),
                  ElevatedButton(onPressed: (){
                        var value1= int.parse( pluscontroller.text.toString());
                        var value2= int.parse(minuscontroller.text.toString());
                        var value3=value1+value2;
                         print(value3);
                      }, child: Text('+')),

                  SizedBox(

                    width: 120,
                  ),
                 ElevatedButton(onPressed: ()
                 {
                   var value1= int.parse( pluscontroller.text.toString());
                   var value2= int.parse(minuscontroller.text.toString());
                   var value3=value1-value2;
                   print(value3);
                 }, child: Text('-'))
               ],
            ),

            SizedBox(
              height: 20,
            ),
            Row(

              children: [

                SizedBox(
                    width: 50,

                ),
                ElevatedButton(onPressed: ()
                {
                  var value1= int.parse( pluscontroller.text.toString());
                  var value2= int.parse(minuscontroller.text.toString());
                  var value3=value1*value2;
                  print(value3);
                }, child: Text('*')),

                SizedBox(

                  width: 120,
                ),
                ElevatedButton(onPressed: ()
                {
                  var value1= int.parse( pluscontroller.text.toString());
                  var value2= int.parse(minuscontroller.text.toString());
                  var value3=value1/value2;
                  print(value3);
                }, child: Text('/'))
              ],
            )

          ],
        ),
      ),
    );
  }
}
