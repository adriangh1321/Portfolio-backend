package com.argprogram.portfolio.model;

import java.time.LocalDate;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.Where;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@EntityListeners(AuditingEntityListener.class)
@SQLDelete(sql = "UPDATE experiences SET deleted_at=CURDATE() , is_active=false WHERE id = ?")
@Where(clause = "is_active = true")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "experiences")
public class Experience {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "position")
    private String position;

    @Column(name = "company")
    private String company;

    @Column(name = "description")
    private String description;

    @Column(name = "image")
    @Lob
    private String image;

    @Column(name = "start_date")
    private LocalDate startDate;

    @Column(name = "end_date")
    private LocalDate endDate;

    @OneToOne(cascade = {CascadeType.PERSIST, CascadeType.REMOVE})
    @JoinColumn(name = "location_id", nullable = false)
    private Location location;

    @ManyToOne
    @JoinColumn(name = "portfolio_id")
    private Portfolio portfolio;

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
