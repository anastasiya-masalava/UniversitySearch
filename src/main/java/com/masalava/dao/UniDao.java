package com.masalava.dao;

import com.masalava.entity.University;


import java.util.List;

public interface UniDao {
    List <University> findAll();
    void save(University user);
    University getById(int id);
    void delete(int id);
    void update(University user);
}
