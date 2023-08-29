import 'package:meu_app_oo/classes/pessoa_abstract.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';

class PessoaJuridica extends Pessoa {
  String _cnpj = "";

  String getCnpj() {
    return _cnpj;
  }

  void setCnpj(String cnpj) {
    _cnpj = cnpj;
  }

  //construtor
  PessoaJuridica(String nome, String endereco, String cnpj,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM})
      : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cnpj = cnpj;
  }
  //sobrescrita

  @override
  String toString() {
    return {
      "Tipo": "PJ",
      "Nome": getNome(),
      "Endereco": getNome(),
      "TipoNotificacao": getTipoNotificacao(),
      "Cnpj": _cnpj
    }.toString();
  }
}
