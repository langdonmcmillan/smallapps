package com.sg.sitelab.ops;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author apprentice
 */
public class Factorizer {
    
    @Min(value = 1, message = "Enter a positive whole number")
    @NotNull(message = "You must enter a number")
    private Integer number;
    private ArrayList<Integer> factorList;
    private int factorCounter;
    private int sumOfFactors;
    private String isPrime;
    private String isPerfect;

    public Factorizer() {
        factorList = new ArrayList<>();
        factorCounter = 1;
        sumOfFactors = 0;
    }

    public void performCalculations() {
        /* This method loops through numbers up to the inputted number and checks
        if the current number is a factor of the inputted number
         */
        for (int i = 1; i < getNumber(); i++) {
            if (getNumber() % i == 0) {
                getFactorList().add(i);
                sumOfFactors += i;
                factorCounter++;
            }
        }
    }

    public String getIsPerfect() {
        // Uses sumOfFactors to check if perfect.
        if (getNumber() == sumOfFactors) {
            isPerfect = "" + number + " is a perfect number.";
        } else {
            isPerfect = "" + number + " is not a perfect number.";
        }
        return isPerfect;
    }

    public String getIsPrime() {
        // Uses factorCounter to check if the inputted number is a prime number.
        if (factorCounter > 2) {
            isPrime = "" + number + " is not a prime number.";
        } else {
            isPrime = "" + number + " is a prime number.";
        }
        return isPrime;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public ArrayList<Integer> getFactorList() {
        return factorList;
    }

}
