package com.mateusz.project.repositories;

import org.springframework.data.repository.CrudRepository;

import com.mateusz.project.models.User;

public interface UserRepository extends CrudRepository<User, Integer> {
	
	public User findByUsernameAndPassword(String username, String password);

}
