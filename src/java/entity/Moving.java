/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

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
    @NamedQuery(name = "Moving.findByMovingStatus", query = "SELECT m FROM Moving m WHERE m.movingStatus = :movingStatus"),
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
    @Column(name = "MovingStatus")
    private String movingStatus;
    @Size(max = 45)
    @Column(name = "MovingExtras")
    private String movingExtras;

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

    public String getMovingStatus() {
        return movingStatus;
    }

    public void setMovingStatus(String movingStatus) {
        this.movingStatus = movingStatus;
    }

    public String getMovingExtras() {
        return movingExtras;
    }

    public void setMovingExtras(String movingExtras) {
        this.movingExtras = movingExtras;
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
