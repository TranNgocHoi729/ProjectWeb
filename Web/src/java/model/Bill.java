/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.BillDao;
import dao.CarDao;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author dell
 */
public class Bill {

    int id;
    Date date;
    String carCode;
    String customerName;
    String customerAddress;
    String customerPhone;
    String customerEmail;
    double VAT = 45;
    int isBought;
    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

    public Bill( Date date, String carCode, String customerName, String customerAddress, String customerPhone, String customerEmail,  int isBought) {
        
        this.date = date;
        this.carCode = carCode;
        this.customerName = customerName;
        this.customerAddress = customerAddress;
        this.customerPhone = customerPhone;
        this.customerEmail = customerEmail;
        this.isBought = isBought;
        
    }

    public Bill() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate() {
        this.date = new Date();
    }

    public String getCarCode() {
        return carCode;
    }

    public void setCarCode(String carCode) {
        this.carCode = carCode;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerAddress() {
        return customerAddress;
    }

    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

    public String getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(String customerPhone) {
        this.customerPhone = customerPhone;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public double getVAT() {
        return VAT;
    }

    public void setVAT(double VAT) {
        this.VAT = VAT;
    }

    public int getIsBought() {
        return isBought;
    }

    public void setIsBought(int isBought) {
        this.isBought = isBought;
    }

    public double getTotalCost() throws Exception {
        Car c = new CarDao().getCarByCarCodes(carCode);
        double prices = c.getPrice();
        return  prices + prices*VAT/100 ;
    }
    public ArrayList<Bill> getAllBill() throws Exception{
        return  new BillDao().getAllBill();
    }

   
}
