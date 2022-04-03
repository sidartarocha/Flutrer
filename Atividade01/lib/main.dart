import 'package:atividade01/ItemApoio.dart';
import 'package:atividade01/repository/ItemLista.dart';
import 'package:flutter/material.dart';
import 'package:atividade01/repository/repository.dart';

void main() {
  final repository = Repository();
  final data = repository.generadorLista();
  runApp(MyApp(data));
}


class MyApp extends StatefulWidget {

  List<ItemLista> itemLista;

  MyApp(this.itemLista);

  @override
  State<StatefulWidget> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp>{

  @override
  Widget build (BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Atividade 04'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(
          //mainAxisSize: MainAxisSize.max,
          //crossAxisAlignment: CrossAxisAlignment.end,
     //     mainAxisAlignment: MainAxisAlignment.center,
          children: [ElevatedButton(
            onPressed: () {
              setState(() {
                for (var it in widget.itemLista){
                  if (it.isChecked)  {
                    it.isChecked = false;
                  }
                }
              });
            },
            child: const Text('Resetar todos os itens'),
            // style: ElevatedButton.styleFrom(
            // minimumSize: const Size(200, 50),
            // maximumSize: const Size(200, 50),
            // )

          ),
          Expanded(child:
            ListView.separated(
            shrinkWrap: true,
            padding: const EdgeInsets.all(10),
            itemCount: widget.itemLista.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemApoio(widget.itemLista[index]);
              }, separatorBuilder: (BuildContext context, int index) => const Divider(),
          ),
          )
          ],

        ),
      ),
    );
  }
}


