/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.util.Date;

/**
 *
 * @author mauricioatenas
 */
public class Users {
    
    private int UserID;
    private String UserEmail;
    private String UserPassword;
    private String UserFirstName;
    private String UserLastName;
    private String UserCity;
    private String UserAddress;
    private boolean UserEmailVerified;
    private Date UserRegistrationDate;
    private String UserPhone;

    public Users(int UserID, String UserEmail, String UserPassword, String UserFirstName, String UserLastName, String UserCity, String UserAddress, boolean UserEmailVerified, Date UserRegistrationDate, String UserPhone) {
        this.UserID = UserID;
        this.UserEmail = UserEmail;
        this.UserPassword = UserPassword;
        this.UserFirstName = UserFirstName;
        this.UserLastName = UserLastName;
        this.UserCity = UserCity;
        this.UserAddress = UserAddress;
        this.UserEmailVerified = UserEmailVerified;
        this.UserRegistrationDate = UserRegistrationDate;
        this.UserPhone = UserPhone;
    }
    
    public Users()
    {
        
    }
    

    public int getUserID() {
        return UserID;
    }

    public void setUserID(int UserID) {
        this.UserID = UserID;
    }

    public String getUserEmail() {
        return UserEmail;
    }

    public void setUserEmail(String UserEmail) {
        this.UserEmail = UserEmail;
    }

    public String getUserPassword() {
        return UserPassword;
    }

    public void setUserPassword(String UserPassword) {
        this.UserPassword = UserPassword;
    }

    public String getUserFirstName() {
        return UserFirstName;
    }

    public void setUserFirstName(String UserFirstName) {
        this.UserFirstName = UserFirstName;
    }

    public String getUserLastName() {
        return UserLastName;
    }

    public void setUserLastName(String UserLastName) {
        this.UserLastName = UserLastName;
    }

    public String getUserCity() {
        return UserCity;
    }

    public void setUserCity(String UserCity) {
        this.UserCity = UserCity;
    }

    public String getUserAddress() {
        return UserAddress;
    }

    public void setUserAddress(String UserAddress) {
        this.UserAddress = UserAddress;
    }

    public boolean isUserEmailVerified() {
        return UserEmailVerified;
    }

    public void setUserEmailVerified(boolean UserEmailVerified) {
        this.UserEmailVerified = UserEmailVerified;
    }

    public Date getUserRegistrationDate() {
        return UserRegistrationDate;
    }

    public void setUserRegistrationDate(Date UserRegistrationDate) {
        this.UserRegistrationDate = UserRegistrationDate;
    }

    public String getUserPhone() {
        return UserPhone;
    }

    public void setUserPhone(String UserPhone) {
        this.UserPhone = UserPhone;
    }
    
    
}
