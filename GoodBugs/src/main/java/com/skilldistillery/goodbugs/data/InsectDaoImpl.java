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

}
