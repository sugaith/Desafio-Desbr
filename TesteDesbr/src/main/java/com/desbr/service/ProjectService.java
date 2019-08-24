package com.desbr.service;

import com.desbr.model.Projeto;

import java.util.List;


public interface ProjectService {

	 public List<Projeto> getAll();
	 
	 public Projeto getById(long id);
	 
	 public void saveOrUpdate(Projeto p);
	 
	 public void delete(long id);
}