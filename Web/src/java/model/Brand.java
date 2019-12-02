/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.CarDao;
import java.util.ArrayList;

/**
 *
 * @author dell
 */
public class Brand {
    String brandId;
    String brandName;
    String distributor;

    public Brand(String brandId, String brandName, String distributor) {
        this.brandId = brandId;
        this.brandName = brandName;
        this.distributor = distributor;
    }

    public String getBrandId() {
        return brandId;
    }

    public void setBrandId(String brandId) {
        this.brandId = brandId;
    }

    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }

    public String getDistributor() {
        return distributor;
    }

    public void setDistributor(String distributor) {
        this.distributor = distributor;
    }
    
    public ArrayList<Car>getCarByBrand(int page,int size)throws Exception{
        return new CarDao().getCarByBrand(brandId , page, size);
    }


   
}
