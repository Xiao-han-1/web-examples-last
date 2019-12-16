package com.service;

import com.service.ServiceImp.ServiceImp;
import com.service.newsImp;
public class newsFactory {
    private static final newsService newsService = create();

    private static newsService create() {
        return new newsImp();
    }
    public static newsService getNewsService() {
        return newsService;
    }
}
