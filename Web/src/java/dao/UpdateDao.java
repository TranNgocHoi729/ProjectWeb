/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import contex.DBContex;
import model.Car;

/**
 *
 * @author dell
 */
public class UpdateDao {
    public void updatePrice(String codes,double price) throws Exception{      
        Car c = new CarDao().getCarByCarCodes(codes);
        if(c.getCarCode()!=null){
            String sql = "Update car set price = "+price+" where car_code = '"+codes+"'";
            new DBContex().getConnection().prepareStatement(sql).executeUpdate();
        }else{
            
        }
    }
}
