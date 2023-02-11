//Dart programming fundamentals
import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';

//main function call
void main() {
  runApp(MyApp());
}

//create class with extended material theme inheritance
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppstate();
  }
}
class _MyAppstate extends State<MyApp> {
  var index = 0;
  var questionsList=[
    {
      'questionText':'what\'s your favourite position?',
      'answers':['Ceo','Cfo','Cto','rookie']
    },{
      'questionText':'what\'s your favourite part?',
      'answers':['left','right','hand','boss']
    },{
      'questionText':'what\'s your favourite ide?',
      'answers':['jetbrains','android','subl','vscode']
    }
  ];
  void answerQuestion(){
    setState(() {
      index++;
    });

    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(backgroundColor: Colors.black, title: Text('Hello World')),
          body: Column(
            children: <Widget>[

              Question(questionsList[index]['questionText'].toString()),

        //      creating the answers dynamically
        // ...(questionsList[index]['answers']as List<String>).map((ans)=>{
        //         return Answers(answerQuestion,ans);
        //       })}


              // (questionsList[index]['answers']as List<Map<String,Object>>).map((e){
              //     return Answers(
              //         () => answerQuestion();
              //     );
              // }
              // ).toList()


//               ...(list[questionIndex]['answer'] as List<Map<String, Object>>)
// //             .map((answer) {
// //           return Answer(
// //                   () => answerQuestion(answer['score']), answer['text'] as String);
// //         }).toList()


            ],
          ),
        ));
  }
}
































/*nandan code for map*/
// import 'package:flutter/material.dart';
// import './quetion.dart';
// import './answer.dart';
//
// class Quiz extends StatelessWidget {
//   final int questionIndex;
//   final List<Map<String, Object>> list;
//   final Function answerQuestion;
//
//   Quiz({this.list, this.answerQuestion, this.questionIndex});
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       // ignore: prefer_const_literals_to_create_immutables
//       children: <Widget>[
//         //Text('The Question!'),
//         Question(list[questionIndex]['questionText'] as String),
//
//         ...(list[questionIndex]['answer'] as List<Map<String, Object>>)
//             .map((answer) {
//           return Answer(
//                   () => answerQuestion(answer['score']), answer['text'] as String);
//         }).toList()
//       ],
//     );
//   }

