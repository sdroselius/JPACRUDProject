package com.skilldistillery.dogparks.dao;

import java.util.List;

import com.skilldistillery.dogparks.entities.DogPark;

public interface DogParkDAO {
	DogPark findById(int parkId);
	List<DogPark> findAll();
	DogPark create(DogPark newPark);
	DogPark update(int parkId, DogPark park);
	boolean deleteById(int parkId);
}
