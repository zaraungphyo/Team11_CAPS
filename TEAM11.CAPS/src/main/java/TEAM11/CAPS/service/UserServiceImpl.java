package TEAM11.CAPS.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import TEAM11.CAPS.model.Role;
import TEAM11.CAPS.model.User;

@Service
public class UserServiceImpl implements UserService {

	@Override
	public ArrayList<User> findAllUsers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User findUser(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User createUser(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User changeUser(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void removeUser(User user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ArrayList<Role> findRolesForUser(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<String> findRoleNamesForUser(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<String> findManagerNameByUID(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User authenticate(String uname, String pwd) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
