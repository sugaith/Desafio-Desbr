package com.desbr.service;


import com.desbr.model.Projeto;
import com.desbr.repository.ProjectRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@org.springframework.stereotype.Service
@Transactional
public class ProjectServiceImpl implements ProjectService {
 
 @Autowired
 ProjectRepository repository;

 @Override
 public List<Projeto> getAll() {
  return (List<Projeto>) repository.findAll();
 }

 @Override
 public Projeto getById(long id) {
  return repository.findById(id).get();
 }

 @Override
 public void saveOrUpdate(Projeto p) {
  repository.save(p);
 }

 @Override
 public void delete(long id) {
  repository.deleteById(id);
 }

}