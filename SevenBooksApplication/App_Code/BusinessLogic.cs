using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SevenBooksApplication.Models;

namespace SevenBooksApplication.App_Code
{
    public class BusinessLogic
    {
        //BookContext context = new BookContext();
        public static void AddBook(Book book)
        {
            using (BookContext context = new BookContext())
            {
                context.Books.Add(book);
                context.SaveChanges();
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
            using(BookContext context = new BookContext())
            {
                return context.Books.ToList<Book>();
            }
        } 
        public static List<Book> SearchBookByTitle(string Title)
        {
            using(BookContext context = new BookContext())
            {
                return context.Books.Where(x=>x.Title == Title).ToList<Book>();
            }
        }
        public static List<Book> SearchBookByID(int BookID)
        {
            using(BookContext context = new BookContext())
            {
                return context.Books.Where(x=>x.BookID == BookID).ToList<Book>();
            }
        }
    }
}