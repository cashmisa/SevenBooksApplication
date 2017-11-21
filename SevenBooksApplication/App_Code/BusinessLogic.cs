using SevenBooksApplication.Models;
using System.Collections.Generic;
using System.Linq;
using System;

namespace SevenBooksApplication.App_Code
{
    public class BusinessLogic
    {
        //BookContext context = new BookContext();
        public static void AddBook(string title, string categoryName, string isbn, string author, int stock, decimal price)
        {
            using (BookContext context = new BookContext())
            {
                Book book = new Book
                {
                    Title = title,
                    ISBN = isbn,
                    Author = author,
                    Stock = stock,
                    CategoryID = getCategoryID(categoryName),
                    Price = price
                };
                context.Books.Add(book);
                context.SaveChanges();

            }
        }
        public static void UpdateBook(int BookID, string Title, string CategoryName, string ISBN, string Author, int Stock, decimal Price)
        {
            using (BookContext context = new BookContext())
            {
                Book book = context.Books.Where(x => x.BookID == BookID).First();
                book.Title = Title;
                book.CategoryID = getCategoryID(CategoryName);
                book.ISBN = ISBN;
                book.Author = Author;
                book.Stock = Stock;
                book.Price = Price;
                context.SaveChanges();
            }
        }
        public static void DeleteBook(int BookID)
        {
            using (BookContext context = new BookContext())
            {
                Book book = context.Books.Where(x => x.BookID == BookID).First();
                context.Books.Remove(book);
                context.SaveChanges();
            }
        }
        public static List<Book> SearchAllBooks()
        {
            using (BookContext context = new BookContext())
            {
                return context.Books.ToList<Book>();
            }
        }
        public static List<Book> SearchBookByTitle(string Title)
        {
            using (BookContext context = new BookContext())
            {
                return context.Books.Where(x => x.Title == Title).ToList<Book>();
            }
        }
        public static Book SearchBookByISBN(string ISBN)
        {
            using (BookContext context = new BookContext())
            {
                return context.Books.Where(x => x.ISBN == ISBN).ToList<Book>().FirstOrDefault();
            }
        }
        public static Book SearchBookByBookId(int bookID)
        {
            using (BookContext context = new BookContext())
            {
                Book searchedID = context.Books.Where(x => x.BookID == bookID).FirstOrDefault();
                return searchedID;
            }
        }
        public static int getCategoryID(string category)
        {
            using (BookContext context = new BookContext())
            {

                Category c = context.Categories.Where(x => x.Name == category).FirstOrDefault();
                if (c == null) { return 0; }
                else
                    return c.CategoryID;

            }
        }
        public static List<Book> SearchBookByCategory(string category)
        {
            using (BookContext context = new BookContext())
            {
                int categoryID = getCategoryID(category);
                return context.Books.Where(x => x.CategoryID == categoryID).ToList<Book>();

            }
        }
        public static List<Order> SearchAllOrder()
        {
            using (BookContext context = new BookContext())
            {
                return context.Orders.ToList<Order>();
            }
        }
        public static List<Order> SearchOrderByUserID(string UserID)
        {
            using (BookContext context = new BookContext())
            {
                return context.Orders.Where(x => x.UserID == UserID).ToList<Order>();
            }
        }
        public static Order SearchByOrderID(int OrderID)
        {
            using (BookContext context = new BookContext())
            {
                return context.Orders.Where(x => x.OrderID == OrderID).FirstOrDefault();
            }
        }
        public static void UpdateOrder(int OrderID, string OrderStatus)
        {
            using (BookContext context = new BookContext())
            {
                Order order = context.Orders.Where(x => x.OrderID == OrderID).First();
                order.OrderStatus = OrderStatus;
                context.SaveChanges();
            }
        }

        public static void CreateDiscount(DateTime startDate, DateTime endDate, decimal percent)
        {
            using (BookContext context = new BookContext())
            {
                Discount discount = new Discount()
                {
                    StartDate = startDate,
                    EndDate = endDate,
                    PercentDiscount = percent
                };

                context.Discounts.Add(discount);
                context.SaveChanges();
            }
        }

        //
        // Summary:
        //     Gets the latest discount percent.
        //
        // Returns:
        //     Discount percent (eg. 0.50). Return 0 if expired or no current discount.
        public static decimal GetCurrentDiscount()
        {
            using (BookContext context = new BookContext())
            {
                Discount discount = context.Discounts.OrderBy(d => d.EndDate).FirstOrDefault();
                if(discount == null || discount.EndDate > DateTime.Today)
                {
                    return 0;
                }
                return discount.PercentDiscount;
            }
        }
    }
}