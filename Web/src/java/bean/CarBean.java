/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import contex.DBContex;
import dao.CarDao;
import java.io.Serializable;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Brand;
import model.Car;

/**
 *
 * @author dell
 */
public class CarBean implements Serializable {

    String brandName;
    private int page;
    int size = 8;
    String carName;
    public void setPage(int page) {
        this.page = page;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }


    public CarBean() {
        page = 1;
    }

    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }

    public Brand getBrandByName() throws Exception{
        return new CarDao().getBrandByName(brandName);
    }
    public ArrayList<Car> getSelectByBrand() throws Exception {
        Brand b = new CarDao().getBrandByName(brandName);
        return b.getCarByBrand(page,size);
    }
    public int getPage() throws Exception {
        Connection conn = new DBContex().getConnection();
        CallableStatement cs = conn.prepareCall("{call getSize(?)}"); 
        cs.setString(1, getBrandByName().getBrandId());
        ResultSet rs = cs.executeQuery();
        int rows = 0;
        if (rs.next()) {
            rows = rs.getInt(1);
        }
        rs.close();
        conn.close();
        int x = rows%size;
        return (x==0?(rows/size):(rows/size+1));
    }

    public ArrayList<Car> getCarByName()throws Exception{
        return new CarDao().getCarByCarName(carName);
    }
}
