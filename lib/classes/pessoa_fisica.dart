import 'package:meu_app_oo/classes/pessoa_abstract.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';

class PessoaFisica extends Pessoa {
  String _cpf = "";

  String getCpf() {
    return _cpf;
  }

  void setCpf(String cpf) {
    _cpf = cpf;
  }

  //construtor
  PessoaFisica(String nome, String endereco, String cpf,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM})
      : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cpf = cpf;
  }
  //sobrescrita

  @override
  String toString() {
    return {
      "Tipo": "PF",
      "Nome": getNome(),
      "Endereco": getEndereco(),
      "Cpf": _cpf,
      "TipoNotificacao": getTipoNotificacao()
    }.toString();
  }
}
