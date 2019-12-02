/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import contex.DBContex;
import java.sql.Connection;
import java.sql.Date;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Bill;

/**
 *
 * @author dell
 */
public class BillDao {

    public void getInsertBill(Bill b) throws Exception {
        System.out.println("......." + b.getTotalCost());
        String sql = "insert into orders values (?,?,?,?,?,?,?,?,?)";
        Connection conn = new DBContex().getConnection();
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setDate(1, new Date(b.getDate().getTime()));
        ps.setString(2, b.getCarCode());
        ps.setString(3, b.getCustomerName());
        ps.setString(4, b.getCustomerAddress());
        ps.setString(5, b.getCustomerPhone());
        ps.setString(6, b.getCustomerEmail());
        ps.setDouble(7, 0.4);
        ps.setInt(8, b.getIsBought());
        ps.setDouble(9, b.getTotalCost());
        int x = ps.executeUpdate();
    }

    public ArrayList<Bill> getAllBill() throws Exception {
        ArrayList<Bill> B = new ArrayList<>();
        String sql = "select * from  orders";
        Connection conn = new DBContex().getConnection();
        ResultSet rs = conn.prepareStatement(sql).executeQuery();
        while(rs.next()){
            Date date = rs.getDate(2);
            String carCode = rs.getString(3);
            String name = rs.getString(4);
            String address = rs.getString(5);
            String phone = rs.getString(6);
            String email = rs.getString(7);
            double vat = rs.getDouble(8);
            int isBought = rs.getInt(9);
            B.add(new Bill(date, carCode, name, address, phone, email, isBought));
        }
        return B;
    }
    
    public void isBought(String email) throws Exception{
        String sql = "update orders set is_bought=1 where customer_email ='"+email+"'";
        int x = new DBContex().getConnection().prepareStatement(sql).executeUpdate();
    }
}
