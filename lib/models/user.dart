import 'package:flutter/material.dart';

class User {
  final String nome;
  final String email;
  final String senha;
  final double? cpf;
  final String sexo;
  final String endereco;
  final int? numero;
  final String bairro;
  final int? celular;

  User(
    this.nome,
    this.email,
    this.senha,
    this.cpf,
    this.sexo,
    this.endereco,
    this.numero,
    this.bairro,
    this.celular,
  );
  @override
  String toString() {
    return 'Produto{nome: $nome, email: $email, senha: $senha, cpf: $cpf, sexo: $sexo, endereco: $endereco, numero: $numero, bairro: $bairro,celular: $celular}';
  }
}