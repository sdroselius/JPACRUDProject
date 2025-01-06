package com.skilldistillery.comedy.data;

import java.util.List;

import com.skilldistillery.comedy.entities.ComedyShow;

public interface ComedyShowDAO {
	List<ComedyShow> findAll();
	ComedyShow findById(int showId);
	ComedyShow create(ComedyShow newShow);
	ComedyShow update(int showId, ComedyShow updatingShow);
	boolean deleteById(int showId);
}
