package com.geotest;

public class UserBank {
    private static User[] users = {
            new User("u1", "1234"),
            new User("u2", "1234"),
            new User("u3", "1234")
    };

    public static boolean check(User u){
        for (int i = 0; i < users.length; i++){
            if (users[i].getmUserName().equals(u.getmUserName()) && users[i].getmPassWord().equals(u.getmPassWord())){
                return true;
            }
        }
        return false;
    }
}
