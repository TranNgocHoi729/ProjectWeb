/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.BrandDao;
import dao.CarDao;

/**
 *
 * @author dell
 */
public class Car {
    String carCode;
    String carName;
    String brandId;
    double price;
    double car_height;
    double car_weight;
    String carEngine;
    int carCapacity;
    double acceleration;
    int maximumSpeed;
    String fuelType;

    public Car() {
    }

    public Car(String carCode, String carName, String brandId, double price, double car_height, double car_weight, String carEngine, int carCapacity, double acceleration, int maximumSpeed, String fuelType) {
        this.carCode = carCode;
        this.carName = carName;
        this.brandId = brandId;
        this.price = price;
        this.car_height = car_height;
        this.car_weight = car_weight;
        this.carEngine = carEngine;
        this.carCapacity = carCapacity;
        this.acceleration = acceleration;
        this.maximumSpeed = maximumSpeed;
        this.fuelType = fuelType;
    }



    public String getCarCode() {
        return carCode;
    }

    public void setCarCode(String carCode) {
        this.carCode = carCode;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }

    public String getBrandId() {
        return brandId;
    }

    public void setBrandId(String brandId) {
        this.brandId = brandId;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getCar_height() {
        return car_height;
    }

    public void setCar_height(double car_height) {
        this.car_height = car_height;
    }

    public double getCar_weight() {
        return car_weight;
    }

    public void setCar_weight(double car_weight) {
        this.car_weight = car_weight;
    }

    public String getCarEngine() {
        return carEngine;
    }

    public void setCarEngine(String carEngine) {
        this.carEngine = carEngine;
    }

    public int getCarCapacity() {
        return carCapacity;
    }

    public void setCarCapacity(int carCapacity) {
        this.carCapacity = carCapacity;
    }

    public double getAcceleration() {
        return acceleration;
    }

    public void setAcceleration(double acceleration) {
        this.acceleration = acceleration;
    }

    public int getMaximumSpeed() {
        return maximumSpeed;
    }

    public void setMaximumSpeed(int maximumSpeed) {
        this.maximumSpeed = maximumSpeed;
    }

    public String getFuelType() {
        return fuelType;
    }

    public void setFuelType(String fuelType) {
        this.fuelType = fuelType;
    }
    public String getBrandName() throws Exception{
        return  new CarDao().getBrandById(brandId).getBrandName();
    }
    public String getImage()throws Exception{
        return new CarDao().getImageByCode(carCode);
    }
}
