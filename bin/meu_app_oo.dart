import 'package:meu_app_oo/classes/pessoa_abstract.dart';
import 'package:meu_app_oo/classes/pessoa_fisica.dart';
import 'package:meu_app_oo/classes/pessoa_juridica.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';
import 'package:meu_app_oo/service/enviar_notificacao.dart';

void main(List<String> arguments) {
  /* var p1 = new Pessoa();
  var p2 = Pessoa();
  p1.setNome("Lavynia");
  p1.setEndereco("Rua 1");*/

  //print(p1.nome);colocando o atributo como target _atributo na classe não conseguimos mais acessá-lo assim
  //construtor
  //var p1 = new Pessoa('Lavynia', 'Rua 1');//não faz sentido pois a classe é abstrata
  /*print(p1.getNome());
  print(p1.getEndereco());

  print(p1);*/

  var pessoaFisica = PessoaFisica('josé', 'r 2', '123455464');
  var pessoaJuridica = PessoaJuridica('joão', 'r 3', '123',
      tipoNotificacao: TipoNotificacao.EMAIL);

  print(pessoaFisica);
  print(pessoaJuridica);

  EnviarNotificacao enviarNotificacao = EnviarNotificacao();
  enviarNotificacao.notificar(pessoaFisica);
  enviarNotificacao.notificar(pessoaJuridica);
}
