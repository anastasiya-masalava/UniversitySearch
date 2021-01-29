package com.masalava.mapper;

import com.masalava.entity.University;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UniMapper implements RowMapper<University> {
    @Override
    public University mapRow(ResultSet resultSet, int i) throws SQLException {
        University university =new University();
        university.setId(resultSet.getInt("id"));
        university.setName(resultSet.getString("name"));
        university.setRanking(resultSet.getInt("ranking"));
        university.setType(resultSet.getString("type"));
        university.setLocation(resultSet.getString("location"));
        university.setAppFee(resultSet.getInt("application fee"));
        university.setExaminations(resultSet.getString("examinations"));
        university.setOtherRequirements(resultSet.getString("other requirements"));
        university.setScholarships(resultSet.getString("scholarships"));
        university.setTuitionFee(resultSet.getInt("tuition fee"));
        university.setComplete(resultSet.getString("complete"));
        return university;
    }
}
