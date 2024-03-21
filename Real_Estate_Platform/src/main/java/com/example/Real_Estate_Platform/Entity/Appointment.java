package com.example.Real_Estate_Platform.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor

public class Appointment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private int mediatorId;

    private int buyerId;

    private int propertyId;

    private LocalDate date;

    private String status="Pending";

    @Override
    public String toString() {
        return "Appointment{" +
                "id=" + id +
                ", mediatorId=" + mediatorId +
                ", buyerId=" + buyerId +
                ", propertyId=" + propertyId +
                ", date=" + date +
                ", status='" + status + '\'' +
                '}';
    }
}
