/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.swcguild.addressbookwebapp.dao;

import com.swcguild.addressbookwebapp.model.Address;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.ParameterizedRowMapper;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author apprentice
 */
public class AddressBookDAODbImpl implements AddressBookDAO {
//prepare statments for SQL DB     
    private static final String SQL_INSERT_ADDRESS = 
            "insert into addresses (first_name, last_name, street_address, city, state, zip) values (?,?,?,?,?,?)"; 
    private static final String SQL_DELETE_ADDRESS = 
            "delete from addresses where addressID = ?";
    private static final String SQL_SELECT_ADDRESS = 
            "select * from addresses where AddressID = ?";
    private static final String SQL_UPDATE_ADDRESS = 
            "update addresses set first_name = ?, last_name = ?, street_address = ?, city = ?, state = ?, zip = ? where addressID=?";
    private static final String SQL_SELECT_ALL_ADDRESSES =
            "select * from addresses"; 
    private static final String SQL_COUNT_ADDRESSES = 
            "SELECT COUNT(*) FROM addresses";
    private static final String SQL_SEARCH =
            "SELECT * FROM addresses WHERE ";
    
    
    private JdbcTemplate jdbcTemplate;
    
    public void setJdbctemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
    
    @Override 
    @Transactional (propagation = Propagation.REQUIRED, readOnly = false)
    
    public Address addAddress (Address address) {
        jdbcTemplate.update(SQL_INSERT_ADDRESS,
                address.getFirstName(),
                address.getLastName(),
                address.getStreetAddress(),
                address.getCity(),
                address.getState(),
                address.getZip());
        address.setAddressId(jdbcTemplate.queryForObject("select LAST_INSERT_ID()", 
                    Integer.class));
        return address;
                
    }
    
    @Override
    
    public void removeAddress(int addressId) {
        jdbcTemplate.update(SQL_DELETE_ADDRESS, addressId);
    }
    
    @Override 
    public void updateAddress(Address address) { 
        jdbcTemplate.update(SQL_UPDATE_ADDRESS,
                address.getFirstName(),
                address.getLastName(),
                address.getStreetAddress(),
                address.getCity(),
                address.getState(),
                address.getZip(),
                address.getAddressId());
    }
    @Override    
    public Address[] getallAddresses(){
        List<Address> aList = jdbcTemplate.query(SQL_SELECT_ALL_ADDRESSES, new AddressMapper());
        return aList.toArray(new Address[0]);
        
        
    }    
    
    @Override
    public Address getAddressById(int addressId){
        try {
            return jdbcTemplate.queryForObject(SQL_SELECT_ADDRESS,
                new AddressMapper(), addressId);
                
        }catch (EmptyResultDataAccessException ex){
            return null; 
        }
    }

    @Override
    public Address[] search(Address address) {
            ArrayList<String> params = new ArrayList<>();
            ArrayList<String> questions = new ArrayList<>();
            
            if (!address.getFirstName().isEmpty()) {
                params.add("first_Name=?");
                questions.add(address.getFirstName());
            }
            if (!address.getLastName().isEmpty()){
                params.add("last_Name=?");
                questions.add(address.getLastName());
            }
            if (!address.getStreetAddress().isEmpty()){
                params.add("street=");
                questions.add(address.getStreetAddress());
            }
            if (!address.getCity().isEmpty()){
                params.add("city=");
                questions.add(address.getCity());
            }
            if (!address.getState().isEmpty()){
                params.add("state=");
                questions.add(address.getState());
            }
            if (!address.getZip().isEmpty()){
                params.add("zip=");
                questions.add(address.getZip());
            }
            
            
            String[] questionMark = new String[questions.size()];
            String parameters = "";
            
            if (params.size() > 0) {
                parameters = params.get(0);
                
              for (int i = 1; i <params.size(); i++){
                  parameters = parameters + " AND " + params.get(i);
              }  
              
              for (int i = 0; i < questions.size(); i++) {
                  questionMark[i] = questions.get(i);
              }
              
              String search = "SELECT * FROM addresses WHERE " + parameters;
              List<Address> alist = jdbcTemplate.query(search, questionMark, new AddressMapper());
              return alist.toArray(new Address[0]);
         
            } else return new Address[0];
  
              }
    
    private static final class AddressMapper implements ParameterizedRowMapper<Address> {
        public Address mapRow(ResultSet rs, int rowNum) throws SQLException { 
            Address address = new Address();
            address.setAddressId(rs.getInt("addressId") );
            address.setFirstName(rs.getString("first_name"));
            address.setLastName(rs.getString("last_name"));
            address.setStreetAddress(rs.getString("street_address"));
            address.setCity(rs.getString("city"));
            address.setState(rs.getString("state"));
            address.setZip(rs.getString("zip"));
            
            
            return address; 
        }
    }
    
    
    
}
