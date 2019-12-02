/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import contex.DBContex;
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
public class CarDao {

    public ArrayList<Car> getCarByBrand(String brand_id, int page, int size) throws Exception {
        ArrayList<Car> arr = new ArrayList<>();
        int from = (page - 1) * size + 1;
        int to = page * size;
        Connection conn = new DBContex().getConnection();
        CallableStatement cs = conn.prepareCall("{call GetProductsByBrand(?,?,?)}");
        cs.setInt(1, from);
        cs.setInt(2, to);
        cs.setString(3, brand_id);
        ResultSet rs = cs.executeQuery();
        while (rs.next()) {
            String code = rs.getString(1);
            String name = rs.getString(2);
            String brandId = brand_id;
            Double price = rs.getDouble(4);
            double car_height = rs.getDouble(5);
            double car_weight = rs.getDouble(6);
            String carEngine = rs.getString(7);
            int car_capacity = rs.getInt(8);
            double acceleration = rs.getDouble(9);
            int maximumSpeed = rs.getInt(10);
            String fuelType = rs.getString(11);
            arr.add(new Car(code, name, brandId, price, car_height, car_weight, carEngine, car_capacity, acceleration, maximumSpeed, fuelType));

        }
        return arr;
    }

    public Brand getBrandByName(String name) throws Exception {
        String sql = "select * from brand where brand_name ='" + name + "'";
        Connection conn = new DBContex().getConnection();
        ResultSet rs = conn.prepareStatement(sql).executeQuery();
        String brand_id = "";
        String diss = "";
        while (rs.next()) {
            brand_id = rs.getString(1);
            diss = rs.getString(3);
        }
        return new Brand(brand_id, name, diss);
    }

    public Brand getBrandById(String id) throws Exception {
        String sql = "select * from brand where brand_id ='" + id + "'";
        Connection conn = new DBContex().getConnection();
        ResultSet rs = conn.prepareStatement(sql).executeQuery();
        String name = "";
        String diss = "";
        while (rs.next()) {
            name = rs.getString(2);
            diss = rs.getString(3);
        }
        return new Brand(id, name, diss);
    }

    public ArrayList<Car> getCarByCarCode(String codes) throws Exception {
        ArrayList<Car> a = new ArrayList<>();
        Connection conn = new DBContex().getConnection();
        String sql = "select * from car where car_code = '" + codes + "'";
        ResultSet rs = conn.prepareStatement(sql).executeQuery();

        while (rs.next()) {
            String code = rs.getString(1);
            String name = rs.getString(2);
            String brandId = rs.getString(3);
            Double price = rs.getDouble(4);
            double car_height = rs.getDouble(5);
            double car_weight = rs.getDouble(6);
            String carEngine = rs.getString(7);
            int car_capacity = rs.getInt(8);
            double acceleration = rs.getDouble(9);
            int maximumSpeed = rs.getInt(10);
            String fuelType = rs.getString(11);
            a.add(new Car(code, name, brandId, price, car_height, car_weight, carEngine, car_capacity, acceleration, maximumSpeed, fuelType));
        }
        return a;
    }

    public String getImageByCode(String carCode) throws Exception {
        String sql = "select img from image where car_code = '" + carCode + "'";
        Connection conn = new DBContex().getConnection();
        ResultSet rs = conn.prepareStatement(sql).executeQuery();
        String s = "";
        while (rs.next()) {
            s = rs.getString(1);
        }
        return s;
    }

    public ArrayList<Car> getCarByCarName(String names) throws Exception {
        ArrayList<Car> a = new ArrayList<>();
        Connection conn = new DBContex().getConnection();
        String sql = "select * from car where car_name = '" + names + "'";
        ResultSet rs = conn.prepareStatement(sql).executeQuery();

        while (rs.next()) {
            String code = rs.getString(1);
            String name = rs.getString(2);
            String brandId = rs.getString(3);
            Double price = rs.getDouble(4);
            double car_height = rs.getDouble(5);
            double car_weight = rs.getDouble(6);
            String carEngine = rs.getString(7);
            int car_capacity = rs.getInt(8);
            double acceleration = rs.getDouble(9);
            int maximumSpeed = rs.getInt(10);
            String fuelType = rs.getString(11);
            a.add(new Car(code, name, brandId, price, car_height, car_weight, carEngine, car_capacity, acceleration, maximumSpeed, fuelType));
        }
        return a;
    }

    public ArrayList<Car> getSelectAllDesc() throws Exception {
        ArrayList<Car> a = new ArrayList<>();
        Connection conn = new DBContex().getConnection();
        String sql = "select * from car order by price desc";
        ResultSet rs = conn.prepareStatement(sql).executeQuery();
        while (rs.next()) {
            String code = rs.getString(1);
            String name = rs.getString(2);
            String brandId = rs.getString(3);
            Double price = rs.getDouble(4);
            double car_height = rs.getDouble(5);
            double car_weight = rs.getDouble(6);
            String carEngine = rs.getString(7);
            int car_capacity = rs.getInt(8);
            double acceleration = rs.getDouble(9);
            int maximumSpeed = rs.getInt(10);
            String fuelType = rs.getString(11);
            a.add(new Car(code, name, brandId, price, car_height, car_weight, carEngine, car_capacity, acceleration, maximumSpeed, fuelType));
        }
        return a;
    }

    public ArrayList<Car> getSelectAllAsc() throws Exception {
        ArrayList<Car> a = new ArrayList<>();
        Connection conn = new DBContex().getConnection();
        String sql = "select * from car order by price ";
        ResultSet rs = conn.prepareStatement(sql).executeQuery();
        while (rs.next()) {
            String code = rs.getString(1);
            String name = rs.getString(2);
            String brandId = rs.getString(3);
            Double price = rs.getDouble(4);
            double car_height = rs.getDouble(5);
            double car_weight = rs.getDouble(6);
            String carEngine = rs.getString(7);
            int car_capacity = rs.getInt(8);
            double acceleration = rs.getDouble(9);
            int maximumSpeed = rs.getInt(10);
            String fuelType = rs.getString(11);
            a.add(new Car(code, name, brandId, price, car_height, car_weight, carEngine, car_capacity, acceleration, maximumSpeed, fuelType));
        }
        return a;
    }

    public Car getCarByCarCodes(String codes) throws Exception {
        Car a = new Car();
        Connection conn = new DBContex().getConnection();
        String sql = "select * from car where car_code = '" + codes + "'";
        ResultSet rs = conn.prepareStatement(sql).executeQuery();

        while (rs.next()) {
            String code = rs.getString(1);
            String name = rs.getString(2);
            String brandId = rs.getString(3);
            Double price = rs.getDouble(4);
            double car_height = rs.getDouble(5);
            double car_weight = rs.getDouble(6);
            String carEngine = rs.getString(7);
            int car_capacity = rs.getInt(8);
            double acceleration = rs.getDouble(9);
            int maximumSpeed = rs.getInt(10);
            String fuelType = rs.getString(11);
            a = new Car(code, name, brandId, price, car_height, car_weight, carEngine, car_capacity, acceleration, maximumSpeed, fuelType);
        }
        return a;
    }

    public void insertCar(Car a) throws Exception {
        String sql = "insert into car values (?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps = new DBContex().getConnection().prepareStatement(sql);
        ps.setString(1, a.getCarCode());
        ps.setString(2, a.getCarName());
        ps.setString(3, a.getBrandId());
        ps.setDouble(4, a.getPrice());
        ps.setDouble(5, a.getCar_height());
        ps.setDouble(6, a.getCar_weight());
        ps.setString(7, a.getCarEngine());
        ps.setInt(8, a.getCarCapacity());
        ps.setDouble(9, a.getAcceleration());
        ps.setInt(10, a.getMaximumSpeed());
        ps.setString(11, a.getFuelType());
        int z = ps.executeUpdate();
    }
}
