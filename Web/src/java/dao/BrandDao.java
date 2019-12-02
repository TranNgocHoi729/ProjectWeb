/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import contex.DBContex;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Brand;

/**
 *
 * @author dell
 */
public class BrandDao {
     public ArrayList<Brand> getBrand() throws Exception {
         ArrayList<Brand> b = new ArrayList<>();
        String sql = "select * from brand";
        Connection conn = new DBContex().getConnection();
        ResultSet rs = conn.prepareStatement(sql).executeQuery();
        
        while (rs.next()) {
            String brand_id = rs.getString(1);
            String brandName = rs.getString(2);
            String diss = rs.getString(3);
            b.add(new Brand(brand_id, brandName, diss));
        }
        return b;
    }
}
