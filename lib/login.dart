// import 'package:flutter/material.dart';
// import 'package:xo_game/xo_screen.dart';
//
// class LoginScreen extends StatefulWidget {
//   static String routeName='/LoginScreen';
//   const LoginScreen({super.key});
//
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   TextEditingController player1=TextEditingController();
//   TextEditingController player2=TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.indigo,
//         centerTitle: true,
//         title: Text("XO Game",
//           style: TextStyle(
//           color: Colors.white,
//           fontWeight: FontWeight.bold,
//           fontSize: 20.0
//         ),),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 24.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextFormField(
//               keyboardType: TextInputType.text,
//
//             decoration: InputDecoration(
//               hintText: 'Enter Player 1 Name',
//               border: OutlineInputBorder(),
//
//             ),
//               controller: player1,
//             ),
//             SizedBox(height: 24.0,),
//             TextFormField(
//               keyboardType: TextInputType.text,
//
//               decoration: InputDecoration(
//                 hintText: 'Enter Player 1 Name',
//                 border: OutlineInputBorder(),
//
//               ),
//               controller: player2,
//             ),
//             SizedBox(height: 24.0,),
//             ElevatedButton(
//                 style:ElevatedButton.styleFrom(
//                   backgroundColor: Colors.indigo,
//
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20.0)
//                   )
//                 ) ,
//                 onPressed: (){
//         Navigator.of(context).pushNamed(XOScreen.routeName,
//         arguments: GameBoard(
//           play1: player1.text,
//           play2: player2.text,
//         )
//         );
//                 }, child:
//             Text("Play",style: TextStyle(
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//               fontSize: 14.0
//             ),))
//           ],
//         ),
//       ),
//     );
//   }
// }
// class GameBoard{
//   String play1;  String play2;
//   GameBoard({
//     required this.play1,
//     required this.play2,
// });
// }
import 'package:flutter/material.dart';
import 'package:xo_game/xo_screen.dart';

class LoginScreen extends StatefulWidget {
  static String routeName="/LoginScreen";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController player1Name=TextEditingController();
  TextEditingController player2Name=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("XO Game",style:
        TextStyle(
        color: Colors.white,
        fontSize: 20.0,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Padding(
        padding:
        const EdgeInsets.symmetric(
            horizontal: 28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: player1Name,
              keyboardType: TextInputType.text,
              decoration:InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Player 1 Name'
              ) ,
            ),
            SizedBox(height: 12.0,),
            TextFormField(
              controller: player2Name,
              keyboardType: TextInputType.text,
              decoration:InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Player 2 Name'
              ) ,
            ),
            SizedBox(height: 12.0,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder()
                ),
                onPressed: (){
  Navigator.of(context).pushNamed(XOScreen.routeName,
  arguments: GameBoard(
    player1: player1Name.text,
    player2: player2Name.text,
  )
  ) ;

            }, child:
            Text("Play"))
          ],
        ),
      ),

    );
  }
}
class GameBoard{
  String player1;
  String player2;
  GameBoard({
    required this.player1,
    required this.player2,
});
}
