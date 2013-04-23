/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Ded Mazai
 */
@Entity
@Table(name = "customerorder")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Customerorder.findAll", query = "SELECT c FROM Customerorder c"),
    @NamedQuery(name = "Customerorder.findByOrderID", query = "SELECT c FROM Customerorder c WHERE c.orderID = :orderID"),
    @NamedQuery(name = "Customerorder.findByOrderTotal", query = "SELECT c FROM Customerorder c WHERE c.orderTotal = :orderTotal"),
    @NamedQuery(name = "Customerorder.findByOrderStatus", query = "SELECT c FROM Customerorder c WHERE c.orderStatus = :orderStatus"),
    @NamedQuery(name = "Customerorder.findByConfirmationNumber", query = "SELECT c FROM Customerorder c WHERE c.confirmationNumber = :confirmationNumber")})
public class Customerorder implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "OrderID")
    private Integer orderID;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "OrderTotal")
    private Float orderTotal;
    @Size(max = 45)
    @Column(name = "OrderStatus")
    private String orderStatus;
    @Column(name = "ConfirmationNumber")
    private Integer confirmationNumber;
    @JoinTable(name = "workorder", joinColumns = {
        @JoinColumn(name = "OrderD", referencedColumnName = "OrderID")}, inverseJoinColumns = {
        @JoinColumn(name = "EmployeeID", referencedColumnName = "EmployeeID")})
    @ManyToMany
    private Collection<Employee> employeeCollection;
    @JoinColumn(name = "MovingID", referencedColumnName = "MovingID")
    @ManyToOne(optional = false)
    private Moving movingID;
    @JoinColumn(name = "CustomerID", referencedColumnName = "CustomerID")
    @ManyToOne(optional = false)
    private Customer customerID;

    public Customerorder() {
    }

    public Customerorder(Integer orderID) {
        this.orderID = orderID;
    }

    public Integer getOrderID() {
        return orderID;
    }

    public void setOrderID(Integer orderID) {
        this.orderID = orderID;
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

    public Integer getConfirmationNumber() {
        return confirmationNumber;
    }

    public void setConfirmationNumber(Integer confirmationNumber) {
        this.confirmationNumber = confirmationNumber;
    }

    @XmlTransient
    public Collection<Employee> getEmployeeCollection() {
        return employeeCollection;
    }

    public void setEmployeeCollection(Collection<Employee> employeeCollection) {
        this.employeeCollection = employeeCollection;
    }

    public Moving getMovingID() {
        return movingID;
    }

    public void setMovingID(Moving movingID) {
        this.movingID = movingID;
    }

    public Customer getCustomerID() {
        return customerID;
    }

    public void setCustomerID(Customer customerID) {
        this.customerID = customerID;
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
        if (!(object instanceof Customerorder)) {
            return false;
        }
        Customerorder other = (Customerorder) object;
        if ((this.orderID == null && other.orderID != null) || (this.orderID != null && !this.orderID.equals(other.orderID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Customerorder[ orderID=" + orderID + " ]";
    }
    
}
