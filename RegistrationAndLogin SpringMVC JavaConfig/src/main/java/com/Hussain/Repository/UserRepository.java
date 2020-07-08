package com.Hussain.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Hussain.Entity.User;

public interface UserRepository extends JpaRepository<User, Integer>{

}
