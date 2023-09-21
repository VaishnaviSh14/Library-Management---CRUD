package in.java.springboot.dao;

import org.springframework.data.repository.CrudRepository;

import in.java.springboot.model.Book;

public interface IBookRepository extends CrudRepository<Book, Integer> {

}
