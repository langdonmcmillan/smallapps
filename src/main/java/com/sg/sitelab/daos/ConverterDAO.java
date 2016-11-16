/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sg.smallapps.daos;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Collectors;
import org.springframework.core.io.ClassPathResource;

/**
 *
 * @author apprentice
 */
public class ConverterDAO {
    private final String DELIMITER = "::";
    private HashMap<String, Double> conversionMap;
    
    public ConverterDAO(String conversionType) {
        conversionMap = new HashMap<>();
        load(conversionType);
    }
    
    public HashMap<String, Double> getConversionMap() {
        return conversionMap;
    }
    
    public List<String> getUnits () {
        return conversionMap.keySet().stream().collect(Collectors.toList());
    }
    
    private void load(String conversionType) {

        String fileName = conversionType + "Conversions.txt";
        try {
            Scanner sc = new Scanner(new BufferedReader(new FileReader(new ClassPathResource(fileName).getFile())));
            while (sc.hasNextLine()) {
                String[] encodedLine = sc.nextLine().split(DELIMITER);
                String unit = encodedLine[0];
                Double conversionRatio = Double.parseDouble(encodedLine[1]);
                conversionMap.put(unit, conversionRatio);
            }
        } catch (FileNotFoundException ex) {
            Logger.getLogger(ConverterDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(ConverterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
