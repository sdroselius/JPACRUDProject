package com.skilldistillery.goodbugs.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.goodbugs.entities.BeneficialInsect;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class InsectDaoImpl implements InsectDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public BeneficialInsect findById(int bugId) {
		return em.find(BeneficialInsect.class, bugId);
	}

	@Override
	public List<BeneficialInsect> findAll() {
		String jpql = "SELECT b FROM BeneficialInsect b";
		return em.createQuery(jpql, BeneficialInsect.class).getResultList();
	}

	@Override
	public BeneficialInsect addBug(BeneficialInsect newBug) {
		em.persist(newBug);
		return newBug;
	}

	@Override
	public BeneficialInsect updateBug(int bugId, BeneficialInsect updatingBug) {
		BeneficialInsect managedBug = em.find(BeneficialInsect.class, bugId);
		if (managedBug != null) {
			managedBug.setName(updatingBug.getName());
			managedBug.setScientificName(updatingBug.getScientificName());
			managedBug.setDescription(updatingBug.getDescription());
			managedBug.setImageUrl(updatingBug.getImageUrl());
		}
		return null;
	}

	@Override
	public boolean deleteBug(int bugId) {
		boolean deleted = false;
		BeneficialInsect badBug = em.find(BeneficialInsect.class, bugId);
		if (badBug != null) {
			em.remove(badBug);
			deleted = false;
		}
		return deleted;
	}

}
