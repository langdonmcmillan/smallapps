package com.sg.smallapps.controllers;

import com.sg.smallapps.daos.ConverterDAO;
import com.sg.smallapps.ops.Factorizer;
import com.sg.smallapps.ops.FlooringCalculator;
import com.sg.smallapps.ops.InterestCalculator;
import com.sg.smallapps.ops.LuckySevens;
import com.sg.smallapps.ops.TipCalculator;
import com.sg.smallapps.ops.UnitConverter;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

    public HomeController() {
    }

    @RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
    public String displayHome() {
        return "home";
    }

    @RequestMapping(value = "/luckysevens", method = RequestMethod.GET)
    public String startLuckySevens(HttpServletRequest req, Model model) {
        LuckySevens ls = new LuckySevens();
        model.addAttribute("ls", ls);
        return "luckysevens";
    }

    @RequestMapping(value = "/runLuckySevens", method = RequestMethod.POST)
    public String runLuckySevens(@Valid @ModelAttribute("ls") LuckySevens ls, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "luckysevens";
        }
        ls.startLuckySevens();
        model.addAttribute("startingBet", ls.getStartingBet());
        model.addAttribute("totalRolls", ls.getTotalRolls());
        model.addAttribute("maxMoney", ls.getMaxMoney());
        model.addAttribute("maxMoneyRolls", ls.getMaxMoneyRolls());
        return "luckysevensresponse";
    }

    @RequestMapping(value = "/factorizer", method = RequestMethod.GET)
    public String startFactorizer(HttpServletRequest req, Model model) {
        Factorizer f = new Factorizer();
        model.addAttribute("f", f);
        return "factorizer";
    }

    @RequestMapping(value = "/runFactorizer", method = RequestMethod.POST)
    public String runFactorizer(@Valid @ModelAttribute("f") Factorizer f, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "factorizer";
        }
        f.performCalculations();
        model.addAttribute("f", f);
        return "factorizerresponse";
    }

    @RequestMapping(value = "/interestcalculator", method = RequestMethod.GET)
    public String startInterestCalculator(HttpServletRequest req, Model model) {
        InterestCalculator ic = new InterestCalculator();
        model.addAttribute("ic", ic);
        return "interestcalculator";
    }

    @RequestMapping(value = "/runInterestCalculator", method = RequestMethod.POST)
    public String runInterestCalculator(@Valid @ModelAttribute("ic") InterestCalculator ic, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "interestcalculator";
        }
        ic.performCalculations();
        model.addAttribute("ic", ic);
        return "interestcalculatorresponse";
    }

    @RequestMapping(value = "/flooringcalculator", method = RequestMethod.GET)
    public String startFlooringCalculator(Model model) {
        FlooringCalculator fc = new FlooringCalculator();
        model.addAttribute("fc", fc);
        return "flooringcalculator";
    }

    @RequestMapping(value = "/runFlooringCalculator", method = RequestMethod.POST)
    public String runFlooringCalculator(@Valid @ModelAttribute("fc") FlooringCalculator fc, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "flooringcalculator";
        }
        model.addAttribute("fc", fc);
        return "flooringcalculatorresponse";
    }

    @RequestMapping(value = "/tipcalculator", method = RequestMethod.GET)
    public String startTipCalculator(Model model) {
        TipCalculator tc = new TipCalculator();
        model.addAttribute("tc", tc);
        return "tipcalculator";
    }

    @RequestMapping(value = "/runTipCalculator", method = RequestMethod.POST)
    public String runTipCalculator(@Valid @ModelAttribute("tc") TipCalculator tc, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "tipcalculator";
        }
        model.addAttribute("tc", tc);
        return "tipcalculatorresponse";
    }

    @RequestMapping(value = "/unitconverter", method = RequestMethod.GET)
    public String startUnitConverter(Model model) {
        UnitConverter uc = new UnitConverter();
        model.addAttribute("uc", uc);
        return "unitconverter";
    }

    @RequestMapping(value = "/getUnitConverterUnits", method = RequestMethod.POST)
    public String getUnitConverterUnits(HttpServletRequest req, Model model, @ModelAttribute("uc") UnitConverter uc) {
        String conversionType = req.getParameter("conversionTypeChoice");
        ConverterDAO cdao = new ConverterDAO(conversionType);
        model.addAttribute("uc", uc);
        model.addAttribute("conversionType", conversionType);
        model.addAttribute("unitList", cdao.getUnits());
        return "unitconverter";
    }

    @RequestMapping(value = "/runUnitConverter", method = RequestMethod.POST)
    public String runUnitConverter(@Valid @ModelAttribute("uc") UnitConverter uc, BindingResult result, Model model, HttpServletRequest req) {
        String conversionType = req.getParameter("conversionType");
        ConverterDAO cdao = new ConverterDAO(conversionType);
        if (result.hasErrors()) {
            return "unitconverter";
        }
        uc.setConversionMap(cdao.getConversionMap());
        uc.performConversion();
        model.addAttribute("conversionType", conversionType);
        model.addAttribute("unitList", cdao.getUnits());
        model.addAttribute("uc", uc);
        return "unitconverter";
    }
}
