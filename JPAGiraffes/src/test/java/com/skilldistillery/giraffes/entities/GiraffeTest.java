package com.skilldistillery.giraffes.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class GiraffeTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Giraffe giraffe;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("GiraffePU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		giraffe = em.find(Giraffe.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		giraffe = null;
	}

	@Test
	void test_Giraffe_entity_mapping() {
		assertNotNull(giraffe);
		assertEquals("Dobby", giraffe.getName());
	}

}
