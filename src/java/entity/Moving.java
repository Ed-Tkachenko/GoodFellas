/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Ded Mazai
 */
@Entity
@Table(name = "moving")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Moving.findAll", query = "SELECT m FROM Moving m"),
    @NamedQuery(name = "Moving.findByMovingID", query = "SELECT m FROM Moving m WHERE m.movingID = :movingID"),
    @NamedQuery(name = "Moving.findByMovingDate", query = "SELECT m FROM Moving m WHERE m.movingDate = :movingDate"),
    @NamedQuery(name = "Moving.findByMovingTime", query = "SELECT m FROM Moving m WHERE m.movingTime = :movingTime"),
    @NamedQuery(name = "Moving.findByMovingType", query = "SELECT m FROM Moving m WHERE m.movingType = :movingType"),
    @NamedQuery(name = "Moving.findByMovingSize", query = "SELECT m FROM Moving m WHERE m.movingSize = :movingSize"),
    @NamedQuery(name = "Moving.findByMpvingStatus", query = "SELECT m FROM Moving m WHERE m.mpvingStatus = :mpvingStatus"),
    @NamedQuery(name = "Moving.findByMovingExtras", query = "SELECT m FROM Moving m WHERE m.movingExtras = :movingExtras")})
public class Moving implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "MovingID")
    private Integer movingID;
    @Column(name = "MovingDate")
    @Temporal(TemporalType.DATE)
    private Date movingDate;
    @Size(max = 45)
    @Column(name = "MovingTime")
    private String movingTime;
    @Size(max = 45)
    @Column(name = "MovingType")
    private String movingType;
    @Size(max = 45)
    @Column(name = "MovingSize")
    private String movingSize;
    @Size(max = 45)
    @Column(name = "MpvingStatus")
    private String mpvingStatus;
    @Size(max = 45)
    @Column(name = "MovingExtras")
    private String movingExtras;
    @JoinTable(name = "fromwhere", joinColumns = {
        @JoinColumn(name = "MovingID", referencedColumnName = "MovingID")}, inverseJoinColumns = {
        @JoinColumn(name = "AddressID", referencedColumnName = "AddressID")})
    @ManyToMany
    private Collection<Address> addressCollection;
    @JoinTable(name = "towhere", joinColumns = {
        @JoinColumn(name = "MovingID", referencedColumnName = "MovingID")}, inverseJoinColumns = {
        @JoinColumn(name = "AddressID", referencedColumnName = "AddressID")})
    @ManyToMany
    private Collection<Address> addressCollection1;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "movingID")
    private Collection<Customerorder> customerorderCollection;

    public Moving() {
    }

    public Moving(Integer movingID) {
        this.movingID = movingID;
    }

    public Integer getMovingID() {
        return movingID;
    }

    public void setMovingID(Integer movingID) {
        this.movingID = movingID;
    }

    public Date getMovingDate() {
        return movingDate;
    }

    public void setMovingDate(Date movingDate) {
        this.movingDate = movingDate;
    }

    public String getMovingTime() {
        return movingTime;
    }

    public void setMovingTime(String movingTime) {
        this.movingTime = movingTime;
    }

    public String getMovingType() {
        return movingType;
    }

    public void setMovingType(String movingType) {
        this.movingType = movingType;
    }

    public String getMovingSize() {
        return movingSize;
    }

    public void setMovingSize(String movingSize) {
        this.movingSize = movingSize;
    }

    public String getMpvingStatus() {
        return mpvingStatus;
    }

    public void setMpvingStatus(String mpvingStatus) {
        this.mpvingStatus = mpvingStatus;
    }

    public String getMovingExtras() {
        return movingExtras;
    }

    public void setMovingExtras(String movingExtras) {
        this.movingExtras = movingExtras;
    }

    @XmlTransient
    public Collection<Address> getAddressCollection() {
        return addressCollection;
    }

    public void setAddressCollection(Collection<Address> addressCollection) {
        this.addressCollection = addressCollection;
    }

    @XmlTransient
    public Collection<Address> getAddressCollection1() {
        return addressCollection1;
    }

    public void setAddressCollection1(Collection<Address> addressCollection1) {
        this.addressCollection1 = addressCollection1;
    }

    @XmlTransient
    public Collection<Customerorder> getCustomerorderCollection() {
        return customerorderCollection;
    }

    public void setCustomerorderCollection(Collection<Customerorder> customerorderCollection) {
        this.customerorderCollection = customerorderCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (movingID != null ? movingID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Moving)) {
            return false;
        }
        Moving other = (Moving) object;
        if ((this.movingID == null && other.movingID != null) || (this.movingID != null && !this.movingID.equals(other.movingID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Moving[ movingID=" + movingID + " ]";
    }
    
}
