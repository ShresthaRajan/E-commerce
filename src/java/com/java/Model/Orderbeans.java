
package com.java.Model;

public class Orderbeans {
    
public int CPID;
public String Email;
public String FirstName;
public String LastName;
public int Contact;
public String Address1;
public String Address2;
public String City;
public String State;
public int Zip;
public int Amount;
public String Product;

    public Orderbeans() {
    }

    public Orderbeans(int CPID, String Email, String FirstName, String LastName, int Contact, String Address1, String Address2, String City, String State, int Zip, int Amount, String Product) {
        this.CPID = CPID;
        this.Email = Email;
        this.FirstName = FirstName;
        this.LastName = LastName;
        this.Contact = Contact;
        this.Address1 = Address1;
        this.Address2 = Address2;
        this.City = City;
        this.State = State;
        this.Zip = Zip;
        this.Amount = Amount;
        this.Product = Product;
    }

   
    public int getCPID() {
        return CPID;
    }

    public void setCPID(int CPID) {
        this.CPID = CPID;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String FirstName) {
        this.FirstName = FirstName;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String LastName) {
        this.LastName = LastName;
    }

    public int getContact() {
        return Contact;
    }

    public void setContact(int Contact) {
        this.Contact = Contact;
    }

    public String getAddress1() {
        return Address1;
    }

    public void setAddress1(String Address1) {
        this.Address1 = Address1;
    }

    public String getAddress2() {
        return Address2;
    }

    public void setAddress2(String Address2) {
        this.Address2 = Address2;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String City) {
        this.City = City;
    }

    public String getState() {
        return State;
    }

    public void setState(String State) {
        this.State = State;
    }

    public int getZip() {
        return Zip;
    }

    public void setZip(int Zip) {
        this.Zip = Zip;
    }

    public int getAmount() {
        return Amount;
    }

    public void setAmount(int Amount) {
        this.Amount = Amount;
    }

    public String getProduct() {
        return Product;
    }

    public void setProduct(String Product) {
        this.Product = Product;
    }   
}
