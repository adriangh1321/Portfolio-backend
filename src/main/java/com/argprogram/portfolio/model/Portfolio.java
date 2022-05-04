package com.argprogram.portfolio.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
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
    private String image;

    @Column(name = "about_me")
    private String aboutMe;

//    @OneToOne
//    @JoinColumn(name="current_company_id")
//    private CurrentCompany currentCompany;
//    @OneToOne
//    @JoinColumn(name="contact_information_id")
//    private Contactinformation information;
}
