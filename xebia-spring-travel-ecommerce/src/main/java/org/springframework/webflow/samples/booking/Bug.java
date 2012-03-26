package org.springframework.webflow.samples.booking;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by IntelliJ IDEA.
 * User: diego
 * Date: 3/19/12
 * Time: 8:46 PM
 * To change this template use File | Settings | File Templates.
 */
@Entity
public class Bug implements Serializable {
    @Id
    private int code;

    @Column
    private boolean enabled;

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }
}
