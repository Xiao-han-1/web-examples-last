package com.service;

import com.service.ServiceImp.ServiceImp;

public class ServiceFactory {
    private static final UserService userService = create();

    private static UserService create() {
        return new ServiceImp();
    }
    public static UserService getUserService() {
        return userService;
    }
}
