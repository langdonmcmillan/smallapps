/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.smallapps.ops;

import javax.validation.constraints.NotNull;
import org.hibernate.validator.constraints.Range;

/**
 *
 * @author apprentice
 */
public class FlooringCalculator {
    @NotNull(message = "Please enter a width.")
    @Range(message = "The width must be greater than 0.")
    private Double width;
    @NotNull(message = "Please enter a length.")
    @Range(message = "The length must be greater than 0.")
    private Double length;
    private Double squareFeet;
    @NotNull(message = "Please enter the material cost per square foot.")
    @Range(message = "The material unit cost must be greater than 0.")
    private Double materialUnitCost;
    private Double laborCost;
    private Double materialCost;
    private Double totalCost;
    

    public Double getSquareFeet() {
        return getWidth() * getLength();  
    }

    public Double getLaborCost() {
        laborCost = 0.0;
        Double feetPerHour = 20.0;
        Double costPerHour = 86.0;
        laborCost += ((int)(getSquareFeet() / feetPerHour)) * costPerHour;
        Double hourFraction = Math.ceil(((getSquareFeet() / feetPerHour) - ((int)(getSquareFeet() / feetPerHour))) * 4) /4f;
        laborCost += hourFraction * costPerHour;
        return laborCost;
    }

    public Double getMaterialCost() {
        totalCost = getSquareFeet() * getMaterialUnitCost();
        return totalCost;
    }

    public Double getTotalCost() {
        return getLaborCost() + getMaterialCost();
    }

    public Double getWidth() {
        return width;
    }

    public Double getLength() {
        return length;
    }

    public Double getMaterialUnitCost() {
        return materialUnitCost;
    }

    public void setWidth(Double width) {
        this.width = width;
    }

    public void setLength(Double length) {
        this.length = length;
    }

    public void setSquareFeet(Double squareFeet) {
        this.squareFeet = squareFeet;
    }

    public void setMaterialUnitCost(Double materialUnitCost) {
        this.materialUnitCost = materialUnitCost;
    }
}
