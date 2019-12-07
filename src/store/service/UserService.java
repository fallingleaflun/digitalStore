package store.service;
import java.sql.SQLException;
import java.util.Date;
import javax.security.auth.login.LoginException;
import store.dao.UserDao;
import store.domain.User;
import store.exception.RegisterException;

public class UserService {
	private UserDao dao = new UserDao();
	// 注册操作
	public void register(User user) throws RegisterException {
		// 调用dao完成注册操作
		try {
			dao.addUser(user);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RegisterException("注册失败");
		}
	}
	// 登录操作
	public User login(String username, String password) throws LoginException {
		try {
			//根据登录时表单输入的用户名和密码，查找用户
			User user = dao.findUserByUsernameAndPassword(username, password);
			//如果找到，还需要确定用户是否为激活用户
			if (user != null) {
				// 只有用户可用才能登录成功，否则提示“用户不可用”
				if (user.getState() == 1) {
					return user;
				}
				throw new LoginException("用户不可用");
			}
			throw new LoginException("用户名或密码错误");
		} catch (SQLException e) {
			e.printStackTrace();
			throw new LoginException("登录失败");
		}
	}
}
