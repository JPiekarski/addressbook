/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.swcguild.addressbookwebapp;

import com.swcguild.addressbookwebapp.dao.AddressBookDAO;
import com.swcguild.addressbookwebapp.model.Address;
import org.junit.After;
import org.junit.AfterClass;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNull;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;


/**
 *
 * @author apprentice
 */
public class AddressBookDAOTest {
    
    AddressBookDAO DAO; 
    
    public AddressBookDAOTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
        
        //Ask Spring for my DAO 
        ApplicationContext ctx = new ClassPathXmlApplicationContext("test-applicationContext.xml");
        DAO = (AddressBookDAO) ctx.getBean("addressBookDAO");
        
        JdbcTemplate cleaner = (JdbcTemplate) ctx.getBean("jdbcTemplate");
        cleaner.execute("delete from addresses");
    }
    
    @After
    public void tearDown() {
    }

    // TODO add test methods here.
    // The methods must be annotated with annotation @Test. For example:
    //
     @Test
     public void addGetDeleteAddresses() {
         //creat new address 
         Address ad = new Address();
         ad.setFirstName("Jacob");
         ad.setLastName("Jacob@Jacob.Com");
         ad.setStreetAddress("123 Main St");
         ad.setCity("Anytown");
         ad.setState("OH");
         ad.setZip("12345");
         
         DAO.addAddress(ad);
         
         Address fromDb = DAO.getAddressById(ad.getAddressId());
         
         assertEquals(fromDb.getAddressId(), ad.getAddressId());
         assertEquals(fromDb.getFirstName(), ad.getFirstName()); 
         assertEquals(fromDb.getStreetAddress(), ad.getStreetAddress());
         assertEquals(fromDb.getCity(), ad.getCity());
         assertEquals(fromDb.getState(), ad.getState());
         assertEquals(fromDb.getZip(), ad.getZip());
         
         DAO.removeAddress(ad.getAddressId());
         assertNull(DAO.getAddressById(ad.getAddressId()));
         
     }
     
     @Test
     public void addUpdateContact() {
         //create new address book entry 
         Address ad = new Address();
        ad.setFirstName("Bob");
         ad.setLastName("Tom");
         ad.setStreetAddress("000Main St");
         ad.setCity("000");
         ad.setState("00");
         ad.setZip("00000");   
     
         DAO.addAddress(ad);
         
         ad.setLastName("Williams");
         
         DAO.updateAddress(ad);
         
         Address fromDb = DAO.getAddressById(ad.getAddressId());
         
         assertEquals(fromDb.getAddressId(), ad.getAddressId());
         assertEquals(fromDb.getFirstName(), ad.getFirstName()); 
         assertEquals(fromDb.getStreetAddress(), ad.getStreetAddress());
         assertEquals(fromDb.getCity(), ad.getCity());
         assertEquals(fromDb.getState(), ad.getState());
         assertEquals(fromDb.getZip(), ad.getZip());
     
     }
     
     
     @Test
     public void getAllAddresses() {
         //creat new address
         Address ad = new Address();
         ad.setFirstName("Jacob");
         ad.setLastName("Jacob@Jacob.Com");
         ad.setStreetAddress("123 Main St");
         ad.setCity("Anytown");
         ad.setState("OH");
         ad.setZip("12345");     
         
                  DAO.addAddress(ad);

         
            //creat new address
         Address ad2 = new Address();
         ad2.setFirstName("Jacob");
         ad2.setLastName("Jacob@Jacob.Com");
         ad2.setStreetAddress("123 Main St");
         ad2.setCity("Anytown");
         ad2.setState("OH");
         ad2.setZip("12345");   
         
                  DAO.addAddress(ad);

        //get all addresses 
        
        Address[] aArr = DAO.getallAddresses();
        assertEquals(aArr.length, 2); 
        
        
     }


}

