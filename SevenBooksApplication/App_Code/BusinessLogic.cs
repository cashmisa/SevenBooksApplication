using SevenBooksApplication.Models;
using System.Collections.Generic;
using System.Linq;

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
        public static void UpdateBook(int BookID, string Title, int CategoryID, string ISBN, string Author, int Stock, decimal Price)
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
            try
            {
                using (BookContext context = new BookContext())
                {
                    return context.Books.Where(x => x.ISBN == ISBN).ToList<Book>()[0];
                }
            }
            catch (System.ArgumentOutOfRangeException)
            {
                Book noBookNull = null;
                return noBookNull;
            }

        }
    
    public static int getCategoryID(string category)
    {
            try
            {
                using (BookContext context = new BookContext())
                {

                    Category c = context.Categories.Where(x => x.Name == category).ToList<Category>()[0];

                    return c.CategoryID;

                }
            }catch (System.ArgumentOutOfRangeException)
            {
                return 0;
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
            return context.Orders.Where(x => x.OrderID == OrderID).First();
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
}
}