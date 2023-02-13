package com.spring.bookstore.service;

import com.spring.bookstore.entity.BookEntity;
import com.spring.bookstore.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookService {
    @Autowired
    BookRepository bookRepository;
    public Object findAll() {return bookRepository.findAll();
    }

    public List<BookEntity> findByNameContainingOrAuthorContaining(String searchInput, String searchInput1) {return bookRepository.findByNameContainingOrAuthorContaining(searchInput,searchInput1);
    }

    public void save(BookEntity book) { bookRepository.save(book);
    }

    public Object getByID(int id) { return bookRepository.getByID(id);
    }

    public void deleteById(int id) {
        bookRepository.deleteById(id);
    }
}
