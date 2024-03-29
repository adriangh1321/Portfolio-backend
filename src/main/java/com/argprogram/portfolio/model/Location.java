
package com.argprogram.portfolio.model;

import java.time.LocalDate;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.SQLDelete;
import org.hibernate.annotations.Where;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@EntityListeners(AuditingEntityListener.class)
@SQLDelete(sql = "UPDATE locations SET deleted_at=CURDATE() , is_active=false WHERE id = ?")
@Where(clause = "is_active = true")
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "locations")
public class Location {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @OneToOne
    @JoinColumn(name = "region_id")
    private Region region;
    
    @Column(name="address")
    private String address;
    
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
