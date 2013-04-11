/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Ded Mazai
 */
@Entity
@Table(name = "customersorder")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Customersorder.findAll", query = "SELECT c FROM Customersorder c"),
    @NamedQuery(name = "Customersorder.findByOrderID", query = "SELECT c FROM Customersorder c WHERE c.orderID = :orderID"),
    @NamedQuery(name = "Customersorder.findByCustomerID", query = "SELECT c FROM Customersorder c WHERE c.customerID = :customerID"),
    @NamedQuery(name = "Customersorder.findByMovingID", query = "SELECT c FROM Customersorder c WHERE c.movingID = :movingID"),
    @NamedQuery(name = "Customersorder.findByOrderTotal", query = "SELECT c FROM Customersorder c WHERE c.orderTotal = :orderTotal"),
    @NamedQuery(name = "Customersorder.findByOrderStatus", query = "SELECT c FROM Customersorder c WHERE c.orderStatus = :orderStatus")})
public class Customersorder implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "OrderID")
    private Integer orderID;
    @Column(name = "CustomerID")
    private Integer customerID;
    @Column(name = "MovingID")
    private Integer movingID;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "OrderTotal")
    private Float orderTotal;
    @Size(max = 45)
    @Column(name = "OrderStatus")
    private String orderStatus;

    public Customersorder() {
    }

    public Customersorder(Integer orderID) {
        this.orderID = orderID;
    }

    public Integer getOrderID() {
        return orderID;
    }

    public void setOrderID(Integer orderID) {
        this.orderID = orderID;
    }

    public Integer getCustomerID() {
        return customerID;
    }

    public void setCustomerID(Integer customerID) {
        this.customerID = customerID;
    }

    public Integer getMovingID() {
        return movingID;
    }

    public void setMovingID(Integer movingID) {
        this.movingID = movingID;
    }

    public Float getOrderTotal() {
        return orderTotal;
    }

    public void setOrderTotal(Float orderTotal) {
        this.orderTotal = orderTotal;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (orderID != null ? orderID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Customersorder)) {
            return false;
        }
        Customersorder other = (Customersorder) object;
        if ((this.orderID == null && other.orderID != null) || (this.orderID != null && !this.orderID.equals(other.orderID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Customersorder[ orderID=" + orderID + " ]";
    }
    
}
