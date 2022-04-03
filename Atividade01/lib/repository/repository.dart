import 'package:atividade01/util/util.dart';
import 'package:atividade01/repository/ItemLista.dart';

class Repository{
  List<ItemLista>? _cache;

  Repository(){
    print("Construtor");
  }

  List<ItemLista> getItemLista(){
    print("get Lista");
    _cache ??= generadorLista();
    return _cache!;
  }


  List<ItemLista> generadorLista() {
    print("generate note list");
    return List<ItemLista>.generate(
        1000,(x) => ItemLista(
            id: x,
            descricao: Utils.generateRandomString(25),
            isChecked: Utils.generateRandomEnabledState()
        )
    );
  }


}


