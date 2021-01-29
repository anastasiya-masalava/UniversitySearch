package com.masalava.dao;

import com.masalava.entity.University;
import com.masalava.mapper.UniMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class UniDaoImpl implements UniDao {

    public JdbcTemplate jdbcTemplate;

    @Autowired
    public UniDaoImpl(JdbcTemplate jdbcTemplate){
        this.jdbcTemplate=jdbcTemplate;
    }

    public List<University> findAll() {
        String sql="SELECT * FROM universities";
        return jdbcTemplate.query(sql, new UniMapper());
    }


    public void save(University university) {
        String sql="INSERT INTO universities(name, ranking, type, location, `application fee`, examinations, `other requirements`, scholarships, `tuition fee`, complete) VALUES (?,?,?,?,?,?,?,?,?,?)";
        jdbcTemplate.update(sql, university.getName(),university.getRanking(), university.getType(), university.getLocation(), university.getAppFee(), university.getExaminations(), university.getOtherRequirements(), university.getScholarships(), university.getTuitionFee(), university.getComplete());

    }

    public University getById(int id) {
        String sql="SELECT * FROM universities WHERE id=?";
        return jdbcTemplate.queryForObject(sql, new UniMapper(), id);
    }


    public void delete(int id) {
        String sql="DELETE FROM universities WHERE id=?";
        jdbcTemplate.update(sql, id);
    }

    public void update(University university) {
        String sql="UPDATE universities SET name=?, ranking=?, type=?, location=?, `application fee`=?, examinations=?, `other requirements`=?, scholarships=?, `tuition fee`=?, complete=? WHERE id=?";
        jdbcTemplate.update(sql, university.getName(),university.getRanking(), university.getType(), university.getLocation(), university.getAppFee(), university.getExaminations(), university.getOtherRequirements(), university.getScholarships(), university.getTuitionFee(), university.getComplete(), university.getId());
    }
}
