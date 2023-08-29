import 'package:meu_app_oo/classes/pessoa_abstract.dart';
import 'package:meu_app_oo/service/notificacao_interface.dart';

class NotificacaoEmail implements NotificacaoInterface {
  //sobrescrevendo
  @override
  void enviarNotificacao(Pessoa pessoa){
    print("Enviando Email para ${pessoa.getNome()}");
  }
}
