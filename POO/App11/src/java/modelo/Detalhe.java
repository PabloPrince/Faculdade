/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author placido
 */
@Entity
@Table(name = "detalhe")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Detalhe.findAll", query = "SELECT d FROM Detalhe d"),
    @NamedQuery(name = "Detalhe.findById", query = "SELECT d FROM Detalhe d WHERE d.id = :id")})
public class Detalhe implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @JoinColumn(name = "id_filme", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Filme idFilme;
    @JoinColumn(name = "id_locacao", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Locacao idLocacao;
    @JoinColumn(name = "id_status", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Status idStatus;

    public Detalhe() {
    }

    public Detalhe(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Filme getIdFilme() {
        return idFilme;
    }

    public void setIdFilme(Filme idFilme) {
        this.idFilme = idFilme;
    }

    public Locacao getIdLocacao() {
        return idLocacao;
    }

    public void setIdLocacao(Locacao idLocacao) {
        this.idLocacao = idLocacao;
    }

    public Status getIdStatus() {
        return idStatus;
    }

    public void setIdStatus(Status idStatus) {
        this.idStatus = idStatus;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Detalhe)) {
            return false;
        }
        Detalhe other = (Detalhe) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Detalhe[ id=" + id + " ]";
    }
    
}
