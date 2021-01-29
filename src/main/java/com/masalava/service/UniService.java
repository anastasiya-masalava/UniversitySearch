package com.masalava.service;

import com.masalava.entity.University;

import java.util.List;

public interface UniService {

    List <University> findAll();
    void save(University university);
    University getById(int id);
    void delete(int id);
    void update(University university);
}
