package com.skilldistillery.giraffes.data;

import com.skilldistillery.giraffes.entities.Giraffe;

public interface GiraffeDAO {
   Giraffe findById(int id);
}
