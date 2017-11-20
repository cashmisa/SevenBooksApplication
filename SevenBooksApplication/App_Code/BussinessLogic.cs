using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SevenBooksApplication.Models;

namespace SevenBooksApplication.App_Code
{
    public class BussinessLogic
    {
        BookContext context = new BookContext();
        public static void AddBook(Book book)
        {
            using (BookContext entities = new BookContext())
            {
                entities.Books.Add(book);
                entities.SaveChanges();
            }
        }
        public static void UpdateBook(int BookID,string Title,int CategoryID,string ISBN,string Author,int Stock,decimal Price)
        {
            using (BookContext context = new BookContext())
            {
                Book book = context.Books.Where(x => x.BookID == BookID).First();
                book.Title = Title;
                book.CategoryID = CategoryID;
                book.ISBN = ISBN;
                book.Author = Author;
                book.Stock = Stock;
                book.Price = Price;
                context.SaveChanges();
            }
        }
        public static void DeleteBook(int BookID)
        {
            using(BookContext context = new BookContext())
            {
                Book book = context.Books.Where(x => x.BookID == BookID).First();
                context.Books.Remove(book);
                context.SaveChanges();
            }
        }
        public static List<Book> SearchAllBooks()
        {
            using(BookContext entities = new BookContext())
            {
                return entities.Books.ToList<Book>();
            }
        } 
        public static List<Book> SearchBookByTitle(string Title)
        {
            using(BookContext entities = new BookContext())
            {
                return entities.Books.Where(x=>x.Title == Title).ToList<Book>();
            }
        }
        public static Book GetBookDetails(string ISBN)
        {
            using (BookContext entities = new BookContext())
            {
                return entities.Books.Where(x => x.ISBN == ISBN).ToList<Book>()[0];
            }
        }
       
    }
}