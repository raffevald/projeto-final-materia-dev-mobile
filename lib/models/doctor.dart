import 'package:flutter/material.dart';

class Doctor {
  final String nome;
  final String email;
  final String senha;
  final double? cpf;
  final String sexo;
  final String especialidade;
  final int? crm;
  final int? rqe;
  final int? cro;
  final String endereco;
  final int? numero;
  final String bairro;
  final int? celular;

  Doctor(
    this.nome,
    this.email,
    this.senha,
    this.cpf,
    this.sexo,
    this.especialidade,
    this.crm,
    this.rqe,
    this.cro,
    this.endereco,
    this.numero,
    this.bairro,
    this.celular,
  );
  @override
  String toString() {
    return 'Produto{nome: $nome, email: $email, senha: $senha, cpf: $cpf, sexo: $sexo, especialidade: $especialidade, crm: $crm, rqe: $rqe, cro: $cro, endereco: $endereco, numero: $numero, bairro: $bairro,celular: $celular}';
  }
}