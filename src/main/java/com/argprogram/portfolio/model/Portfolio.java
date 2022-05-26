package com.argprogram.portfolio.model;

import java.time.LocalDate;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.SQLDelete;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@EntityListeners(AuditingEntityListener.class)
@SQLDelete(sql = "UPDATE portfolios SET deleted_at=CURDATE() , is_active=false WHERE id = ?")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "portfolios")
public class Portfolio {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "firstname")
    private String firstname;

    @Column(name = "lastname")
    private String lastname;

    @Column(name = "ocupation")
    private String ocupation;

    @Column(name = "country")
    private String country;

    @Column(name = "state")
    private String state;

    @Column(name = "image")
    @Lob
    private String image;

    @Column(name = "about_me")
    private String aboutMe;

    @OneToOne
    @JoinColumn(name = "current_company_id")
    private CurrentCompany currentCompany;

    @OneToOne
    @JoinColumn(name = "contact_information_id")
    private ContactInformation contactInformation;

    @Column(name = "created_at", nullable = false, updatable = false)
    @CreatedDate
    @DateTimeFormat(pattern = "yyyy/MM/dd")
    private LocalDate createdAt;

    @Column(name = "updated_at")
    @LastModifiedDate
    @DateTimeFormat(pattern = "yyyy/MM/dd")
    private LocalDate updatedAt;

    @Column(name = "deleted_at")
    @DateTimeFormat(pattern = "yyyy/MM/dd")
    private LocalDate deletedAt;

    @Column(name = "is_active")
    private Boolean isActive = Boolean.TRUE;
}
