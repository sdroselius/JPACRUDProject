package com.skilldistillery.dogparks.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.dogparks.entities.DogPark;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class DogParkDaoImpl implements DogParkDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public DogPark findById(int parkId) {
		return em.find(DogPark.class, parkId);
	}

	@Override
	public List<DogPark> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public DogPark create(DogPark newPark) {
		em.persist(newPark);
		return newPark;
	}

	@Override
	public DogPark update(int parkId, DogPark park) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteById(int parkId) {
		// TODO Auto-generated method stub
		return false;
	}

}
