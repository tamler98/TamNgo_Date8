package com.spring.bookstore.service;

import com.spring.bookstore.entity.CategoryEntity;
import com.spring.bookstore.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryService {
    @Autowired
    CategoryRepository categoryRepository;
    public Object findAll() {return categoryRepository.findAll();
    }

    public void save(CategoryEntity category) {categoryRepository.save(category);
    }

    public Object findById(int id) {return categoryRepository.findById(id);
    }

    public void deleteById(int id) {categoryRepository.deleteById(id);
    }
}
