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
public class Options {
    
    private int OptionID;
    private int OptionGroupID;
    private String OptionName;

    public Options(int OptionID, int OptionGroupID, String OptionName) {
        this.OptionID = OptionID;
        this.OptionGroupID = OptionGroupID;
        this.OptionName = OptionName;
    }
    
    public Options()
    {
    }

    public int getOptionID() {
        return OptionID;
    }

    public void setOptionID(int OptionID) {
        this.OptionID = OptionID;
    }

    public int getOptionGroupID() {
        return OptionGroupID;
    }

    public void setOptionGroupID(int OptionGroupID) {
        this.OptionGroupID = OptionGroupID;
    }

    public String getOptionName() {
        return OptionName;
    }

    public void setOptionName(String OptionName) {
        this.OptionName = OptionName;
    }
    
    
    
}
