/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.swcguild.addressbookwebapp.dao;

import com.swcguild.addressbookwebapp.model.Address;
/**
 *
 * @author apprentice
 */
public interface AddressBookDAO {
    // add given Adddress to the data source 
    public Address addAddress(Address address);
    
    //remove Address with the given id from the data source 
    public void removeAddress(int addressId);
    
    //retrieve the given Address in the data store 
    public void updateAddress(Address address);
    
    //retrive all Addresses from the data store 
    public Address[] getallAddresses();
    
    //retrive the address with the given id from the data source 
    public Address getAddressById(int addressId); 
    
    public Address[] search(Address address);
    
}
