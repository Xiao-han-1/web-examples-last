package com.service;

import com.entity.news;

import java.util.List;

public interface newsService {
    public List<news> getNews();
    public news getNewById(int id);
}
