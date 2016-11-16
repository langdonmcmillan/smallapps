/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.sitelab.models;

/**
 *
 * @author apprentice
 */
public class InterestCalculatorYearInformation {
    private int year;
    private double beginningPrincipal;
    private double endingPrincipal;
    private double interestEarned;
    
    public InterestCalculatorYearInformation(int year, double beginningPrincipal, double interestEarned, double endingPrincipal) {
        this.year = year;
        this.beginningPrincipal = beginningPrincipal;
        this.interestEarned = interestEarned;
        this.endingPrincipal = endingPrincipal;
    }

    public int getYear() {
        return year;
    }

    public double getBeginningPrincipal() {
        return beginningPrincipal;
    }

    public double getEndingPrincipal() {
        return endingPrincipal;
    }

    public double getInterestEarned() {
        return interestEarned;
    }
}
