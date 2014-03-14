package com.swcguild.addressbookwebapp.controller;

import com.swcguild.addressbookwebapp.dao.AddressBookDAO;
import com.swcguild.addressbookwebapp.model.Address;
import java.util.Map;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class AddressBookController {

    private AddressBookDAO DAO;

    @Inject
    public AddressBookController(AddressBookDAO DAO) {
        this.DAO = DAO;
    }

    @RequestMapping(value = "/addressBook", method = RequestMethod.GET)
    public String addressBookHome(Map<String, Object> model) {
        Address[] aArray = DAO.getallAddresses();
        model.put("addressBook", aArray);
        return "home";

    }

    @RequestMapping(value = "/displayAddressBook", method = RequestMethod.GET)
    public String displayAllAddresses(Map<String, Object> model) {
        Address[] aArray = DAO.getallAddresses();
        model.put("addressBook", aArray);
        return "displayAllAddresses";
    }

    // display form for creating a new contact   
    @RequestMapping(value = "/displayNewAddressForm", method = RequestMethod.GET)
    public String displayNewAddressForm(Map<String, Object> model) {
        return "addAddressForm";

    }

    @RequestMapping(value = "/addAddress", method = RequestMethod.POST)
    public String addContact(Map<String, Object> model,
            HttpServletRequest req,
            HttpServletResponse res) {
        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        String streetAddress = req.getParameter("streetAddress");
        String city = req.getParameter("city");
        String state = req.getParameter("state");
        String zip = req.getParameter("zip");

        Address newAddress = new Address();

        newAddress.setFirstName(firstName);
        newAddress.setLastName(lastName);
        newAddress.setStreetAddress(streetAddress);
        newAddress.setCity(city);
        newAddress.setState(state);
        newAddress.setZip(zip);

        DAO.addAddress(newAddress);

        return "redirect:displayAddressBook";
    }
//
//    @RequestMapping(value = "/displayFindAddress", method = RequestMethod.GET)
//    public String findAddress(Map<String, Object> model,
//            HttpServletRequest req,
//            HttpServletResponse res) {
//
//        return "displaySearchAddresses";
//    }

 //action controllers 
    //add an address
// end point for deleteing a contact. 
    @RequestMapping(value = "/deleteAddress", method = RequestMethod.GET)
    public String deleteContact(@RequestParam("addressId") String id,
            Map<String, Object> model) {
        DAO.removeAddress(Integer.parseInt(id));
        return "redirect:displayAddressBook";
    }

  //edit a contact 
    @RequestMapping(value = "/editAddress", method = RequestMethod.GET)
    public String displayEditContactForm(@RequestParam("addressId") String id,
            Map<String, Object> model) {
        Address address = DAO.getAddressById(Integer.parseInt(id));
        model.put("address", address);
        return "editAddressForm";

    }

    @RequestMapping(value = "/updateAddress", method = RequestMethod.POST)
    public String updateAddress(@ModelAttribute("address") Address address,
            Map<String, Object> model) {
        try {
            DAO.updateAddress(address);
            return "redirect:displayAddressBook";

        } catch (Exception ex) {
            model.put("errorMessage", ex.getMessage());
            return "error";
        }
    }

    @RequestMapping(value = "/displayFindAddress", method = RequestMethod.GET)
    public String displaySearchAddress(Map<String, Object> 
        model) {
        return "displaySearchAddresses";
    }
    
    
    @RequestMapping(value ="/findAddress", method = RequestMethod.POST)
    public String searchAddress(Map<String, Object> model, 
            HttpServletRequest req, 
            HttpServletResponse res ) {
        
            String firstName = req.getParameter("firstName");
            String lastName = req.getParameter("lastName");
            String streetAddress = req.getParameter("streetAddress");
            String city = req.getParameter("city");
            String state = req.getParameter("state");
            String zip =   req.getParameter("zip");
            
            Address address = new Address();
            address.setFirstName(firstName);
            address.setLastName(lastName);
            address.setStreetAddress(streetAddress);
            address.setCity(city);
            address.setState(state);
            address.setZip(zip);
            
            Address[] foundAddresses = DAO.search(address);
            
            model.put("addresses", foundAddresses);
            model.put("numberOfAddresses", foundAddresses.length);
            
            return "displayFoundAddresses";
    }
}
    