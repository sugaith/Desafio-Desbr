package com.desbr.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

@Entity
@Table(name = "pessoa")
public class Pessoa {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = "nome")
    private String nome;

    @Column(name = "datanascimento")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date datanascimento;

    @Column(name = "cpf")
    private String cpf;

    @Column(name = "funcionario")
    private boolean funcionario;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Date getDatanascimento() {
        return datanascimento;
    }

    public void setDatanascimento(Date datanascimento) {
        this.datanascimento = datanascimento;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public boolean isFuncionario() {
        return funcionario;
    }

    public void setFuncionario(boolean funcionario) {
        this.funcionario = funcionario;
    }
}