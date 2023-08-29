import 'package:meu_app_oo/enum/tipo_notificacao.dart';

abstract class Pessoa {
  String _nome = "";
  String _endereco = "";
  String _email = "";
  String _celular = "";
  String _token = "";

  TipoNotificacao _tipoNotificacao = TipoNotificacao.NENHUM;

  void setTipoNotificao(TipoNotificacao tipoNotificacao) {
    _tipoNotificacao = tipoNotificacao;
  }

  TipoNotificacao getTipoNotificacao() {
    return _tipoNotificacao;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  void setEndereco(String endereco) {
    _endereco = endereco;
  }

  String getNome() {
    return _nome.toUpperCase();
  }

  void setEmail(String email) {
    _email = email;
  }

  String getEmail() {
    return _email.toUpperCase();
  }

  void setCelular(String celular) {
    _celular = celular;
  }

  String getCelular() {
    return _celular.toUpperCase();
  }

  void setToken(String token) {
    _token = token;
  }

  String getToken() {
    return _token.toUpperCase();
  }

  String getEndereco() {
    return _endereco;
  }

  //construtor
  Pessoa(String nome, String endereco, {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM}) {
    _nome = nome;
    _endereco = endereco;
    _tipoNotificacao = tipoNotificacao;
  }
  //sobrescrita

  @override
  String toString() {
    return {
      "Nome": _nome,
      "Endereco": _endereco,
      "TipoNotificacao": _tipoNotificacao
    }.toString();
  }
}
