import 'package:flutter/material.dart';
import 'package:tasks_flutter/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tarefas',
          style: TextStyle(color: Colors.white),
        ),
        leading: Container(),
        backgroundColor: Colors.blue,
      ),
      //Trecho de código suprimido
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Task(
              'Aprender Flutter',
              'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
              3,
            ),
            Task(
              'Andar de Bike',
              'https://www.fujibikes.com/cdn/shop/products/2022_FUJI_ADVENTURE_275_COMP_MATTE_IRONGRAY_FRONT.png?v=1668436521&width=580',
              2,
            ),
            Task(
              'Meditar',
              'https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg',
              5,
            ),
            Task(
              'Ler',
              'https://thebogotapost.com/wp-content/uploads/2017/06/636052464065850579-137719760_flyer-image-1.jpg',
              3,
            ),
            Task(
              'Jogar',
              'https://i.ibb.co/tB29PZB/kako-epifania-2022-2-c-pia.jpg',
              1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
