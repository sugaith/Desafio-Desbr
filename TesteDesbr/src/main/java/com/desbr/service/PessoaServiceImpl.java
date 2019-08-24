package com.desbr.service;


import com.desbr.model.Pessoa;
import com.desbr.repository.PessoaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@org.springframework.stereotype.Service
@Transactional
public class PessoaServiceImpl implements PessoaService {
 
 @Autowired
 PessoaRepository repository;

 @Override
 public List<Pessoa> getAll() {
  return (List<Pessoa>) repository.findAll();
 }

 @Override
 public Pessoa getById(long id) {
  return repository.findById(id).get();
 }

 @Override
 public void saveOrUpdate(Pessoa p) {
  repository.save(p);
 }



}