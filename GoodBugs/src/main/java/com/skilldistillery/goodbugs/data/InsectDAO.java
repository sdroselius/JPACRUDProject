package com.skilldistillery.goodbugs.data;

import java.util.List;

import com.skilldistillery.goodbugs.entities.BeneficialInsect;

public interface InsectDAO {
	BeneficialInsect findById(int bugId);
	List<BeneficialInsect> findAll();
	BeneficialInsect addBug(BeneficialInsect newBug);
	BeneficialInsect updateBug(int bugId, BeneficialInsect updatingBug);
	boolean deleteBug(int bugId);
}
