package com.masalava.service;

import com.masalava.dao.UniDao;
import com.masalava.entity.University;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UniServiceImpl implements UniService {
    @Autowired
    public UniDao uniDao;

    public List<University> findAll() {
        return uniDao.findAll();
    }


    public void save(University university) {
        uniDao.save(university);
    }


    public University getById(int id) {
        return uniDao.getById(id);
    }


    public void delete(int id) {
        uniDao.delete(id);
    }


    public void update(University university) {
        uniDao.update(university);
    }
}
