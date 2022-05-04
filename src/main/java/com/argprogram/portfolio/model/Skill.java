package com.argprogram.portfolio.model;

import com.argprogram.portfolio.enumeration.SkillType;
import java.time.LocalDate;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
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
import org.hibernate.annotations.SQLDelete;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@EntityListeners(AuditingEntityListener.class)
@SQLDelete(sql = "UPDATE skills SET deleted_at=CURDATE() , is_active=false WHERE id = ?")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "skills")
public class Skill {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "type")
    private SkillType type;

    @Column(name = "name")
    private String name;

    @Column(name = "percent")
    private Integer percent;

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
