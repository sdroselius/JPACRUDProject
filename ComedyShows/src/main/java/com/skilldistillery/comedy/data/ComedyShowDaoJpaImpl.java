package com.skilldistillery.comedy.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.comedy.entities.ComedyShow;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class ComedyShowDaoJpaImpl implements ComedyShowDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public List<ComedyShow> findAll() {
		String jpql = "SELECT show FROM ComedyShow show";
		 List<ComedyShow> results = em.createQuery(jpql, ComedyShow.class)
				                      .getResultList();
		 return results;
	}

	@Override
	public ComedyShow findById(int showId) {
		return em.find(ComedyShow.class, showId);
	}

	// NO transaction.begin/commit
	// NO em.close()
	@Override
	public ComedyShow create(ComedyShow newShow) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ComedyShow update(int showId, ComedyShow updatingShow) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteById(int showId) {
		// TODO Auto-generated method stub
		return false;
	}

}
