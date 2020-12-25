package com.smartphone.service;

import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smartphone.entity.SmartPhone;
import com.smartphone.repository.SmartPhoneRepository;

@Service
public class SmartPhoneServiceImpl implements SmartPhoneService {
	@Autowired
	SmartPhoneRepository smartphonerepository;
	

	@Override
	public List<SmartPhone> findAll() {
		return smartphonerepository.findAll();

	}

}
