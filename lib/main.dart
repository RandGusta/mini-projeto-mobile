import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class ZodiacSignInformation extends StatefulWidget {
  const ZodiacSignInformation({super.key});

  @override
  State<StatefulWidget> createState() {
    return ZodiacSignInformationState();
  }
}

class ZodiacSignInformationState extends State<ZodiacSignInformation> {
  final controller = TextEditingController();

  String result = "";

  void verificarSigno() {
    List<String> dayMonth = controller.text.split('/');

    int day = int.parse(dayMonth[0]);
    int month = int.parse(dayMonth[1]);

    String signo = descobrirSigno(day, month);

    setState(() {
      result = signo;
    });
  }

  String descobrirSigno(int dia, int mes) {
    switch (mes) {
      case 1:
        return dia <= 19 ? "Capricorn" : "Aquarius";

      case 2:
        return dia <= 18 ? "Aquarius" : "Pisces";

      case 3:
        return dia <= 20 ? "Pisces" : "Aries";

      case 4:
        return dia <= 19 ? "Aries" : "Taurus";

      case 5:
        return dia <= 20 ? "Taurus" : "Gemini";

      case 6:
        return dia <= 20 ? "Gemini" : "Cancer";

      case 7:
        return dia <= 22 ? "Cancer" : "Leo";

      case 8:
        return dia <= 22 ? "Leo" : "Virgo";

      case 9:
        return dia <= 22 ? "Virgo" : "Libra";

      case 10:
        return dia <= 22 ? "Libra" : "Scorpio";

      case 11:
        return dia <= 21 ? "Scorpio" : "Sagittarius";

      case 12:
        return dia <= 21 ? "Sagittarius" : "Capricorn";

      default:
        return "Invalid date";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 124, 126, 185),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Let's found out your zodiac sign",
          style: TextStyle(
            color: Color.fromARGB(255, 247, 248, 218),
            fontSize: 25,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 35, 25, 92),
      ),
      body: Column(
        children: [
          Text(
            "Insert your birth date and let's find out your",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 247, 248, 218),
              fontSize: 25,
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 350,
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    labelText: 'birth date',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: verificarSigno,
                child: Text("Discover"),
              ),

              Text(
                result,
                style: TextStyle(
                  color: Color.fromARGB(255, 247, 248, 218),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ZodiacSignInformation());
  }
}

// void main() {
//   runApp(MainApp());
// }

// // class HomeStateful extends StatefulWidget {
// //   @override
// //   State<StatefulWidget> createState() {
// //     return HomeStatefulState();
// //   }
// // }

// // class HomeStatefulState extends State<HomeStateful> {
// //   String mensagem = "Clique no botão para mudar o texto";

// //   void mudarEstado() {
// //     setState(() {
// //       mensagem = "apertou o botão eba";
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("teste"),
// //         backgroundColor: Color.fromARGB(255, 255, 0, 4),
// //       ),
// //       body: Padding(
// //         padding: EdgeInsets.all(10),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Text(mensagem),
// //             ElevatedButton(onPressed: mudarEstado, child: Text("Clique aqui")),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class HomeStatless extends StatelessWidget {
// //   const HomeStatless({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Classe sem estado"),
// //         backgroundColor: Color.fromARGB(255, 0, 64, 255),
// //       ),
// //       body: Center(child: Text("teste")),
// //     );
// //   }
// // }

// class Calculadora extends StatefulWidget {
//   const Calculadora({super.key});

//   @override
//   State<StatefulWidget> createState() {
//     return CalculadoraState();
//   }
// }

// class CalculadoraState extends State<Calculadora> {
//   final num1Controller = TextEditingController();
//   final num2Controller = TextEditingController();
//   String result = "resultado aqui";
//   double total = 0;
//   var operacao = '';

//   void definirOperacao(op) {
//     setState(() {
//       operacao = op;
//     });
//   }

//   void calcular() {
//     double num1 = double.parse(num1Controller.text);
//     double num2 = double.parse(num2Controller.text);

//     switch (operacao) {
//       case '+':
//         total = num1 + num2;
//         break;
//       case '-':
//         total = num1 - num2;
//         break;
//       case '%':
//         total = num1 - num2;
//         break;
//       case '*':
//         total = num1 * num2;
//         break;
//       default:
//         total = 0;
//         break;
//     }

//     setState(() {
//       result = total.toString();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Calculadora com estado"),
//         backgroundColor: Color.fromARGB(255, 65, 103, 40),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             TextField(
//               controller: num1Controller,
//               decoration: InputDecoration(border: OutlineInputBorder()),
//             ),
//             TextField(
//               controller: num2Controller,
//               decoration: InputDecoration(border: OutlineInputBorder()),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                   onPressed: () => definirOperacao('+'),
//                   child: Text("+", style: TextStyle(fontSize: 25)),
//                 ),
//                 ElevatedButton(
//                   onPressed: () => definirOperacao('-'),
//                   child: Text("-", style: TextStyle(fontSize: 25)),
//                 ),
//                 ElevatedButton(
//                   onPressed: () => definirOperacao('%'),
//                   child: Text("%", style: TextStyle(fontSize: 25)),
//                 ),
//                 ElevatedButton(
//                   onPressed: () => definirOperacao('*'),
//                   child: Text("*", style: TextStyle(fontSize: 25)),
//                 ),
//               ],
//             ),
//             ElevatedButton(onPressed: calcular, child: Text('calcular')),
//             Text(result),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(home: Calculadora());
//   }
// }
