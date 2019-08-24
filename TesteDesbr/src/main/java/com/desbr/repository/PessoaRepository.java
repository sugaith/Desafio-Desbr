package com.desbr.repository;

import com.desbr.model.Pessoa;
import com.desbr.model.Projeto;
import org.springframework.data.repository.CrudRepository;


public interface PessoaRepository extends CrudRepository<Pessoa, Long> {

}