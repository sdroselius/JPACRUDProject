package com.skilldistillery.comedy.entities;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class ComedyShowTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private ComedyShow show;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAComedy");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		show = em.find(ComedyShow.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		show = null;
	}

	@Test
	void test_ComedyShow_entity_mapping() {
		assertNotNull(show);
		assertEquals("Josh Blue", show.getPerformer());
	}

}
