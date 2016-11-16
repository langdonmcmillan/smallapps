package com.sg.sitelab.ops;

import java.util.Random;
import javax.validation.constraints.NotNull;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author apprentice
 */
public class LuckySevens {

    private Integer money;
    @Range(min = 1, max = 1000000, message = "Please enter a whole number greater than 1 and less than 1000000")
    @NotNull(message = "You must enter a bet")
    private Integer startingBet;
    private Integer maxMoney;
    private Integer totalRolls;
    private Integer maxMoneyRolls;
    private Integer currentRoll;

    public LuckySevens() {
    }

    public void setStartingBet(Integer startingBet) {
        this.startingBet = startingBet;
        this.money = startingBet;
    }

    public void startLuckySevens() {
        maxMoney = money;
        totalRolls = 0;
        maxMoneyRolls = 0;

        playGame();
    }

    private void playGame() {
        // Checks that you have money to play. If not, the loop does not initialize.
        while (checkWalletMoney()) {
            currentRoll = rollDice();
            totalRolls++;
            updateMoney();
            updateMaxMoney();
        }
    }

    private boolean checkWalletMoney() {
        return money > 0;
    }

    private Integer rollDice() {
        Random roll = new Random();
        return (roll.nextInt(6) + 1) + (roll.nextInt(6) + 1);
    }

    private void updateMoney() {
        if (currentRoll == 7) {
            money += 4;
        } else {
            money -= 1;
        }
    }

    private void updateMaxMoney() {
        if (money > getMaxMoney()) {
            maxMoney = money;
            maxMoneyRolls = getTotalRolls();
        }
    }

    public Integer getStartingBet() {
        return startingBet;
    }

    public Integer getMaxMoney() {
        return maxMoney;
    }

    public Integer getTotalRolls() {
        return totalRolls;
    }

    public Integer getMaxMoneyRolls() {
        return maxMoneyRolls;
    }
}
