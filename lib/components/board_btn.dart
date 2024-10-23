// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class BoardBtn extends StatelessWidget {
//   String txt;
//   int index;
//   Function(int)onPress;
//    BoardBtn({
//     required this.txt,
//      required this.index,
//      required this.onPress,
//    });
//
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//         style:ElevatedButton.styleFrom(
//           backgroundColor: Colors.indigo,
//           shape: RoundedRectangleBorder(),) ,
//         onPressed: (){
//       onPress(index);
//     },
//         child: Text("$txt",
//         style: TextStyle(
//           color: Colors.white,
//           fontWeight: FontWeight.bold,
//           fontSize: 20.0
//         ),
//         ));
//   }
// }
import 'package:flutter/material.dart';

class BoardBtn extends StatelessWidget {
  String txt;
  int index;
  Function(int)onBoard;
   BoardBtn({
    required this.txt,
     required this.index,
    required this.onBoard,
});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: ElevatedButton(
            style:ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              shape: RoundedRectangleBorder(),
            ) ,
            onPressed:(){
              onBoard(index);
            } ,
            child: Text("$txt",style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold
            ),)),
      ),
    );
  }
}
