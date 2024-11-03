package gm.employees.controller;

import gm.employees.model.Employee;
import gm.employees.service.EmployeeService;
import jakarta.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;


@Controller
public class IndexController {
    private static final Logger logger = LoggerFactory.getLogger(IndexController.class);
    @Autowired
    private EmployeeService employeeService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String init(ModelMap model){
        List<Employee> employeeList = employeeService.listEmployees();
        employeeList.forEach((employee) -> logger.info(employee.toString()));

        model.put("employees",employeeList);
        return "index";//index.jsp
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String showAdd(){
        return "add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(@ModelAttribute("employeeForm") Employee employee){
        logger.info("Empleado a agregar: "+employee);
        employeeService.addEmployee(employee);
        return "redirect:/";
    }
}
