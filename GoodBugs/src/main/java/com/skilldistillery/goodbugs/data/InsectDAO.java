package com.skilldistillery.goodbugs.data;

import java.util.List;

import com.skilldistillery.goodbugs.entities.BeneficialInsect;

public interface InsectDAO {
	BeneficialInsect findById(int bugId);
	List<BeneficialInsect> findAll();
}
