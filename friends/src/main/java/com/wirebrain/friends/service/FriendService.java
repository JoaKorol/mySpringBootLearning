package com.wirebrain.friends.service;

import org.springframework.data.repository.CrudRepository;
import com.wirebrain.friends.model.Friend;

public interface FriendService extends CrudRepository<Friend, Integer> {
    Iterable<Friend> findByFirstNameAndLastName(String firstName, String lastName);
    Iterable<Friend> findByFirstName(String firstName);
    Iterable<Friend> findByLastName(String lastName);
}
