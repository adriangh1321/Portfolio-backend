
package com.argprogram.portfolio.model;

import java.time.LocalDate;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "educations")
public class Education {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(name="title")
    private String title;
    
    @Column(name="institute")
    private String institute;
    
    @Column(name="start_date")
    private LocalDate startDate;
    
    @Column(name="end_date")
    private LocalDate endDate;
    
    @Column(name="image")
    private String image;
    
    @ManyToOne
    @JoinColumn(name="portfolio_id")
    private Portfolio portfolio;
}
