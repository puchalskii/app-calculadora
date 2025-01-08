import 'package:flutter/material.dart';
import 'calculadora.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 255, 0, 111)),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Calculadora'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(),
            ),
            Expanded(
              flex: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                     // alignment: Alignment.center,
                     // color: const Color.fromARGB(255, 248, 113, 158),
                     // child: const Text(
                        //  'Isaac Newton (1643-1727) foi um físico, matemático e astrônomo inglês. Ele é mais conhecido por suas leis do movimento e a lei da gravitação universal, que formaram a base da física clássica. Newton também fez contribuições significativas para a matemática, incluindo o desenvolvimento do cálculo, e teve um papel importante na óptica, estudando a natureza da luz e das cores.'),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 217, 217, 217),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: const Color.fromARGB(255, 70, 70, 70),
                          width: 1,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(129, 17, 17, 17),
                            blurRadius: 10,
                            offset: Offset(5, 5),
                          ),
                        ],
                      ), 
                      child: const Calculadora(),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                    //  alignment: Alignment.center,
                    //  color: const Color.fromARGB(255, 248, 113, 158),
                    //  child: const Text(
                      //    'Gregor Johann Mendel (1822-1884) foi um monge e cientista austríaco, amplamente reconhecido como o pai da genética moderna. Ele é mais conhecido por seus experimentos com plantas de ervilha, através dos quais descobriu os princípios da hereditariedade. Mendel formulou as leis da segregação e da dominância, que explicam como as características são passadas de uma geração para a próxima. Suas descobertas foram inicialmente ignoradas, mas mais tarde se tornaram fundamentais para a biologia e a genética.'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
               // alignment: Alignment.center,
               // color: const Color.fromARGB(255, 247, 152, 245),
               // child: const Text(
                //    '© 2025 Biografias Inspiradoras. Todos os direitos reservados.'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
