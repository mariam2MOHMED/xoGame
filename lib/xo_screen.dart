// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:xo_game/components/board_btn.dart';
// import 'package:xo_game/login.dart';
//
// class XOScreen extends StatefulWidget {
//   static String routeName="XOScreen";
//   const XOScreen({super.key});
//
//   @override
//   State<XOScreen> createState() => _XOScreenState();
// }
//
// class _XOScreenState extends State<XOScreen> {
//   List<String>boards=List.filled(9, '');
//   int player1Score=0;
//   int player2Score=0;
//   @override
//   Widget build(BuildContext context) {
//     GameBoard arg=ModalRoute.of(context)!.settings.arguments as GameBoard;
//     return Scaffold(
// body: SafeArea(
// bottom: false,
//   child: Column(
//     children: [
//   Container(
//     height: MediaQuery.of(context).size.height*0.12,
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         Column(
//           children: [
//             Text("${arg.play1} (X)",style: TextStyle(
//               color: Colors.black,
//               fontSize: 20.0,
//               fontWeight: FontWeight.bold
//             ),),
//             SizedBox(height: 10.0,),
//             Text("$player1Score",style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 16.0,
//                 fontWeight: FontWeight.w400
//             ),),
//
//           ],
//         ),
//         Column(
//           children: [
//             Text("${arg.play2}  (O)",style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold
//             ),),
//             SizedBox(height: 10.0,),
//             Text("$player2Score",style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 16.0,
//                 fontWeight: FontWeight.w400
//             ),),
//
//           ],
//         ),
//       ],
//     ),
//   ),
//       Expanded(
//         child: GridView.builder(
//             physics: NeverScrollableScrollPhysics(),
//             gridDelegate:
//         SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//           mainAxisSpacing: 4,
//           crossAxisSpacing: 4,
//      mainAxisExtent: MediaQuery.of(context).size.height*0.27
//         ),
//             itemCount: boards.length,
//             itemBuilder: (context,index)=>BoardBtn(txt: boards[index],
//                 index: index,
//                 onPress: onBoard)),
//       )
//
//       ],
//   ),
// ),
//     );
//   }
//
//   int round=1;
//   onBoard( int index){
//     if(boards[index].isNotEmpty){
//       return;
//     }
//     if(round.isOdd){
//       boards[index]='X';
//       if(checkWinner('X')){
//         player1Score++;
//         clearBoard();
//         return;
//       }
//     }else{
//       boards[index]='O';
//       if(checkWinner('O')){
//         player2Score++;
//         clearBoard();
//         return;
//       }
//     }
// round++;
//
//  if(round==10){
//       clearBoard();
//       return;
//  }
//     setState(() {
//
//     });
//   }
//   //clear Board
//   clearBoard(){
// boards=List.filled(9, '');
// round=1;
// setState(() {});
//   }
//   bool checkWinner(String symbol){
//     if(round<5){
//       return false;
//     }
//     if(boards[0]==symbol&&boards[4]==symbol&&boards[8]==symbol) {
// return true;
//     }
//     if(boards[2]==symbol &&boards[4]==symbol &&boards[6]==symbol) {
//       return true;
//     }
//     //horizintal row
//     for(int i=0;i<9;i+=3){
//       if(boards[i]==symbol&& boards[i+1]==symbol&&boards[i+2]==symbol){
//         return true;
//       }
//
//     }
//     //vertical column
//     for(int i=0;i<3;i++){
//       if(boards[i]==symbol&& boards[i+3]==symbol
//           &&boards[i+6]==symbol){
//       return true;
//     }
//     }
//     setState(() {
//
//     });
//     return false;
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xo_game/components/board_btn.dart';
import 'package:xo_game/login.dart';

class XOScreen extends StatefulWidget {
  static String routeName="";
  const XOScreen({super.key});

  @override
  State<XOScreen> createState() => _XOScreenState();
}

class _XOScreenState extends State<XOScreen> {
  int player1Score=0;
  int player2Score=0;

  List<String>boards=List.filled(9, '');
  @override
  Widget build(BuildContext context) {
    GameBoard arg=ModalRoute.of(context)!.settings.arguments

    as GameBoard;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("${arg.player1}(X)",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),),
                      SizedBox(height: 10.0,),
                      Text("$player1Score",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),),
                    ],
                  ),
                  Column(
                    children: [
                      Text("${arg.player2} (0)",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),),
                      SizedBox(height: 10.0,),
                      Text("$player2Score",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                (crossAxisCount: 3,
              mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                mainAxisExtent: MediaQuery.of(context).size.height*0.28,
              ),itemCount: boards.length,
                  itemBuilder: (context,index){
                return BoardBtn(txt: "${boards[index]}",
                    index: index, onBoard: onBoardClick);
                  }),
            )
          ],
        ),
      ),
    );
  }
  int round=1;
  onBoardClick(int index){
    if(boards[index].isNotEmpty){return;}
if(round.isOdd){
boards[index]='X';
if(checkWinner('X')){
  player1Score++;
  clearBoard();
  return;
}
}
else{
  boards[index]='O';
  if(checkWinner('O')){
    player2Score++;
    clearBoard();
    return;
  }

}
round++;
if(round==10){
  clearBoard();

}

setState(() {

});
  }
  clearBoard(){
    boards=List.filled(9, '');
    round=1;
    setState(() {

    });
  }
  bool checkWinner(String symbol){
    if(round<5){
      return false;
    }
    if(boards[0]==symbol&&boards[4]==symbol&&boards[8]==symbol){
    return true;
    }
    if(boards[2]==symbol&&boards[4]==symbol&&boards[6]==symbol){
      return true;
    }
    //for column
    for(int i=0;i<3;i++){
    if(boards[i]==symbol &&
        boards[i+3]==symbol &&
        boards[i+6]==symbol
    )  {
      return true;
    }

    }
    //for row
    for(int i=0;i<boards.length;i+=3){
      if(boards[i]==symbol &&
          boards[i+1]==symbol &&
          boards[i+2]==symbol
      )  {
        return true;
      }
setState(() {

});
    }
    return false;
  }
}
