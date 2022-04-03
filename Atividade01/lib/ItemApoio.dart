import 'package:flutter/material.dart';
import 'package:atividade01/repository/ItemLista.dart';
import 'package:flutter/cupertino.dart';

class ItemApoio extends StatefulWidget {

  final ItemLista itemLista;

  ItemApoio(this.itemLista);

  @override
  _ItemApoiotState createState() => _ItemApoiotState();

}

class _ItemApoiotState extends State<ItemApoio>{

  @override
  Widget build (BuildContext context) {
    return SizedBox(
        height: 60,
        child: Container(
          color: widget.itemLista.isChecked ?  Colors.black54 : Colors.white54,
            child: Center(child: Row(children: [
              Text(widget.itemLista.descricao
                ,style: TextStyle(
                  color: widget.itemLista.isChecked ? Colors.white54 : Colors.black54
              )),
              CupertinoSwitch(value: widget.itemLista.isChecked, onChanged: (bool value) {
                setState(() {
                  widget.itemLista.isChecked = value;
                });
              })
            ],
          )),
        )
    );
  }
}