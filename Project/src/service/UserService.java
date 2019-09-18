package service;

import java.util.List;
<<<<<<< HEAD

=======
>>>>>>> branch 'master' of https://github.com/Deokhyunkim-95/project.git
import vo.UserVO;

public interface UserService {
	int addUser(UserVO vo);
	int updateUser(UserVO vo);
	List <UserVO> UserList();
	UserVO login (UserVO vo);
}
