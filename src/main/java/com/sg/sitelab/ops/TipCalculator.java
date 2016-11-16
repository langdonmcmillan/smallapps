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
public class TipCalculator {
    @NotNull(message = "Please enter an amount.")
    @Range(min = 0, max = 1000000, message="Please enter a positive number (less than 1000000")
    private Double amount;
    @NotNull(message = "Please enter what percent to tip.")
    @Range(min = 0, max = 1000, message="Please enter a positive number (1000%")
    private Double enteredTipPercent;
    private Double tipAmount;
    private Double total;
    private Double tipPercent;
    
    public TipCalculator() {

    }

    public Double getTipAmount() {
        return getTipPercent() * getAmount();
    }

    public Double getTotal() {
        return getTipAmount() + getAmount();
    }

    public Double getAmount() {
        return amount;
    }

    public Double getTipPercent() {
        tipPercent = enteredTipPercent / 100;
        return tipPercent;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }
    
    public void setEnteredTipPercent(Double enteredTipPercent) {
        this.enteredTipPercent = enteredTipPercent;
    }
    
    public Double getEnteredTipPercent() {
        return enteredTipPercent;
    }
}
