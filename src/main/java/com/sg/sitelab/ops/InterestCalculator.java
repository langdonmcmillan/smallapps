/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.sitelab.ops;

import com.sg.sitelab.models.InterestCalculatorYearInformation;
import java.text.DecimalFormat;
import java.util.ArrayList;
import javax.validation.constraints.NotNull;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

/**
 *
 * @author apprentice
 */
public class InterestCalculator {

    @Range(min = 1, max = 1000000000, message = "Please enter a positive number to invest.")
    @NotNull(message = "You must enter an amount to invest.")
    private Double investment;
    @Range(min = 0, max = 1000, message = "Please enter a valid interest rate.")
    @NotNull(message = "You must enter an interest rate.")
    private Double interestRate;
    private Integer compoundingFrequency;
    @Range(min = 0, max = 1000, message = "Please enter a number of years.")
    @NotNull(message = "You must enter how long you would like to calculate the investment's returns.")
    private Integer years;
    private ArrayList<InterestCalculatorYearInformation> yearInformationList;
    private InterestCalculatorYearInformation finalYearInformation;
    @NotEmpty(message = "You must choose a compounding rate")
    private String compoundString;

    public InterestCalculator() {
        yearInformationList = new ArrayList<>();
    }

    public void performCalculations() {
        Double beginningPrincipal = investment;
        Double endingPrincipal;
        // This is the formula for finding the end of year balance
        for (int year = 1; year <= getYears(); year++) {
            endingPrincipal = (beginningPrincipal * Math.pow(1 + ((getInterestRate() / 100)
                    / getCompoundingFrequency()), getCompoundingFrequency()));
            Double interestEarned = endingPrincipal - beginningPrincipal;
            // Sets up the next year by making the beginning amount equal to the
            // ending amount of the previous year.
            yearInformationList.add(new InterestCalculatorYearInformation(year, beginningPrincipal, interestEarned, endingPrincipal));
            beginningPrincipal = endingPrincipal;
        }
    }

    private Integer getCompoundingFrequency() {
        // Switch converts string input to an integer (frequency at which
        // the investment is compounded)
        // If they do not enter a valid string, it loops back and asks them
        // to enter a valid option
        switch (compoundString.toLowerCase()) {
            case "yearly":
                return 1;
            case "quarterly":
                return 4;
            case "monthly":
                return 4;
            case "daily":
                return 365;
        }
        return 1;
    }

    public Double getInvestment() {
        return investment;
    }

    public String getCompoundString() {
        return compoundString;
    }

    public ArrayList<InterestCalculatorYearInformation> getYearInformationList() {
        return yearInformationList;
    }

    public InterestCalculatorYearInformation getFinalYearInformation() {
        finalYearInformation = getYearInformationList().get(getYearInformationList().size() - 1);
        return finalYearInformation;
    }

    public Double getInterestRate() {
        return interestRate;
    }

    public Integer getYears() {
        return years;
    }

    public void setCompoundString(String compoundString) {
        this.compoundString = compoundString;
        this.compoundingFrequency = getCompoundingFrequency();
    }

    public void setInvestment(Double investment) {
        this.investment = investment;
    }

    public void setInterestRate(Double interestRate) {
        this.interestRate = interestRate;
    }

    public void setCompoundingFrequency(Integer compoundingFrequency) {
        this.compoundingFrequency = compoundingFrequency;
    }

    public void setYears(Integer numberOfYears) {
        this.years = numberOfYears;
    }

    public void setYearInformationList(ArrayList<InterestCalculatorYearInformation> yearInformationList) {
        this.yearInformationList = yearInformationList;
    }

}
