/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.sitelab.ops;

import java.util.HashMap;
import javax.validation.constraints.NotNull;
import org.hibernate.validator.constraints.NotEmpty;

/**
 *
 * @author apprentice
 */
public class UnitConverter {
    @NotNull(message = "Please enter the amount you would like to convert.")
    private Double givenAmount;
    private Double convertedAmount;
    @NotEmpty(message = "Please enter the type of unit you would like to convert.")
    private String givenUnit;
    @NotEmpty(message = "Please enter the type of unit to which you would like to convert the given amount.")
    private String convertedUnit;
    private HashMap<String, Double> conversionMap;
    @NotEmpty(message = "Please enter the type of conversion you would like to do.")
    private String conversionType;
    
    public UnitConverter() {
        this.convertedAmount = 0.0;
    }
    
    public void performConversion() {
        Double givenValue = givenAmount / conversionMap.get(givenUnit);
        Double convertedValue = 1 / conversionMap.get(convertedUnit);
        convertedAmount = givenValue / convertedValue;
    }
    
    public Double getConvertedValue() {
        return convertedAmount;
    }

    public Double getGivenAmount() {
        return givenAmount;
    }

    public void setGivenAmount(Double givenAmount) {
        this.givenAmount = givenAmount;
    }

    public Double getConvertedAmount() {
        return convertedAmount;
    }

    public void setConvertedAmount(Double convertedAmount) {
        this.convertedAmount = convertedAmount;
    }

    public String getGivenUnit() {
        return givenUnit;
    }

    public void setGivenUnit(String givenUnit) {
        this.givenUnit = givenUnit;
    }

    public String getConvertedUnit() {
        return convertedUnit;
    }

    public void setConvertedUnit(String convertedUnit) {
        this.convertedUnit = convertedUnit;
    }

    public HashMap<String, Double> getConversionMap() {
        return conversionMap;
    }

    public void setConversionMap(HashMap<String, Double> conversionMap) {
        this.conversionMap = conversionMap;
    }

    public String getConversionType() {
        return conversionType;
    }

    public void setConversionType(String conversionType) {
        this.conversionType = conversionType;
    }
}
