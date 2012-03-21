package org.springframework.webflow.samples.booking;

import javax.persistence.*;

/**
 * Created by IntelliJ IDEA.
 * User: diego
 * Date: 3/19/12
 * Time: 8:46 PM
 * To change this template use File | Settings | File Templates.
 */
@Entity
public class Bug {
    @Id
    private int code;
    
    @Column
    private String description;

    @Column
    private boolean enabled;

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }
}
