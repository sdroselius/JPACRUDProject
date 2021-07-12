package com.skilldistillery.giraffes.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.giraffes.entities.Giraffe;

@Service
@Transactional
public class GiraffeDaoJpaImpl implements GiraffeDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Giraffe findById(int id) {
		return em.find(Giraffe.class, id);
	}

}
