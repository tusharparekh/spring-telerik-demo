package com.kendoui.spring.controllers.donutcharts;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kendoui.spring.models.DonutChartsBasicUsageViewModel;

@Controller("dataviz-donut_charts-home-controller")
@RequestMapping(value="/donut-charts/")
public class IndexController {
    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index(Model model) {
        List<DonutChartsBasicUsageViewModel> donutData2011 = new ArrayList<DonutChartsBasicUsageViewModel>();
        donutData2011.add(new DonutChartsBasicUsageViewModel("Asia",30.8,"#9de219"));
        donutData2011.add(new DonutChartsBasicUsageViewModel("Europe",21.1,"#90cc38"));
        donutData2011.add(new DonutChartsBasicUsageViewModel("Latin America",16.3,"#068c35"));
        donutData2011.add(new DonutChartsBasicUsageViewModel("Africa",17.6,"#006634"));
        donutData2011.add(new DonutChartsBasicUsageViewModel("Middle East",9.2,"#004d38"));
        donutData2011.add(new DonutChartsBasicUsageViewModel("North America",4.6,"#033939"));        
        model.addAttribute("donutData2011", donutData2011);

        List<DonutChartsBasicUsageViewModel> donutData2012 = new ArrayList<DonutChartsBasicUsageViewModel>();
        donutData2012.add(new DonutChartsBasicUsageViewModel("Asia",53.8,"#9de219"));
        donutData2012.add(new DonutChartsBasicUsageViewModel("Europe",16.1,"#90cc38"));
        donutData2012.add(new DonutChartsBasicUsageViewModel("Latin America",11.3,"#068c35"));
        donutData2012.add(new DonutChartsBasicUsageViewModel("Africa",9.6,"#006634"));
        donutData2012.add(new DonutChartsBasicUsageViewModel("Middle East",5.2,"#004d38"));
        donutData2012.add(new DonutChartsBasicUsageViewModel("North America",3.6,"#033939"));        
        model.addAttribute("donutData2012", donutData2012);
        
        return "/donut-charts/index";
    }
}
