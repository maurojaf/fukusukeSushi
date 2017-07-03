/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;



/**
 *
 * @author mauricioatenas
 */
public class OptionGroups {
    
    private int OptionGroupID;
    private int OptionGroupName;

    public OptionGroups(int OptionGroupID, int OptionGroupName) {
        this.OptionGroupID = OptionGroupID;
        this.OptionGroupName = OptionGroupName;
    }
    
    public OptionGroups()
    {}

    public int getOptionGroupID() {
        return OptionGroupID;
    }

    public void setOptionGroupID(int OptionGroupID) {
        this.OptionGroupID = OptionGroupID;
    }

    public int getOptionGroupName() {
        return OptionGroupName;
    }

    public void setOptionGroupName(int OptionGroupName) {
        this.OptionGroupName = OptionGroupName;
    }
    
    
}
