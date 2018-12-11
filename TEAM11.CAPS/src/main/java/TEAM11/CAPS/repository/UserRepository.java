package TEAM11.CAPS.repository;
import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import TEAM11.CAPS.model.User;
public interface UserRepository extends JpaRepository<User,Integer> {
	
	@Query("SELECT u FROM User u WHERE u.email=:un AND u.password=:pwd")
	abstract User AuthorizeUser(@Param("un") String uName,@Param("pwd") String pwd);
}
