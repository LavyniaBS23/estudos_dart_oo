import 'package:meu_app_oo/classes/pessoa_abstract.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';
import 'package:meu_app_oo/service/impl/notificacao_email.dart';
import 'package:meu_app_oo/service/impl/notificacao_push_notification.dart';
import 'package:meu_app_oo/service/impl/notificacao_sms.dart';
import 'package:meu_app_oo/service/notificacao_interface.dart';

class EnviarNotificacao {
  NotificacaoInterface? notificacao;
  void notificar(Pessoa pessoa) {
    switch (pessoa.getTipoNotificacao()) {
      case TipoNotificacao.EMAIL:
        notificacao = NotificacaoEmail();
        break;
      case TipoNotificacao.SMS:
        notificacao = NotificacaoSMS();
        break;
      case TipoNotificacao.PUSH_NOTIFICATION:
        notificacao = NotificacaoPushNotification();
        break;
      default:
        break;
    }
    if (notificacao != null) {
      //aqui é certo q tem um valor !
      notificacao!.enviarNotificacao(pessoa);
    } else {
      print("Pessoa sem tipo de notificação");
    }
  }
}
