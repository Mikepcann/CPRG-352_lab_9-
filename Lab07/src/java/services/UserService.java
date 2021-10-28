
package services;

import dataaccess.UserDB;
import java.util.List;
import models.User;

public class UserService {
    
    public List<User> getAll() throws Exception {
        System.out.println("In the User Service");
        UserDB userDB = new UserDB();
        List<User> users = userDB.getAll();
        return users;
    }
}
