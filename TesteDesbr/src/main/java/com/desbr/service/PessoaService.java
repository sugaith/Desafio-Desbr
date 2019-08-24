package com.desbr.service;

import com.desbr.model.Pessoa;

import java.util.List;


public interface PessoaService {

	 public List<Pessoa> getAll();
	 
	 public Pessoa getById(long id);
	 
	 public void saveOrUpdate(Pessoa p);

}