package com.smartphone.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import com.smartphone.entity.SmartPhone;

@Repository 
public interface SmartPhoneRepository extends JpaRepository<SmartPhone,Integer>{



}
