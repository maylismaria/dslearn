package com.devsuperior.dslearn.entities;

import com.devsuperior.dslearn.entities.pk.EnrollmentPK;
import jakarta.persistence.*;

import java.time.Instant;

@Entity
@Table(name = "tb_enrollment")
public class Enrollment {

    @EmbeddedId
    private EnrollmentPK id = new EnrollmentPK();

    @Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
    private Instant enrollment;

    @Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
    private Instant refoundMoment;
    private boolean available;
    private boolean onlyUpdate;

    public Enrollment() {
    }

    public Enrollment(User user, Offer offer, Instant enrollment, Instant refoundMoment, boolean available, boolean onlyUpdate) {

        id.setUser(user);
        id.setOffer(offer);
        this.enrollment = enrollment;
        this.refoundMoment = refoundMoment;
        this.available = available;
        this.onlyUpdate = onlyUpdate;
    }

    public User getStudent() {
        return id.getUser();
    }

    public void SetStudent(User user) {
         id.setUser(user);
    }

    public Offer getOffer() {
        return id.getOffer();
    }

    public void SetOffer(Offer offer) {
        id.setOffer(offer);
    }

    public Instant getEnrollment() {
        return enrollment;
    }

    public void setEnrollment(Instant enrollment) {
        this.enrollment = enrollment;
    }

    public Instant getRefoundMoment() {
        return refoundMoment;
    }

    public void setRefoundMoment(Instant refoundMoment) {
        this.refoundMoment = refoundMoment;
    }

    public boolean isAvailable() {
        return available;
    }

    public void setAvailable(boolean available) {
        this.available = available;
    }

    public boolean isOnlyUpdate() {
        return onlyUpdate;
    }

    public void setOnlyUpdate(boolean onlyUpdate) {
        this.onlyUpdate = onlyUpdate;
    }
}
