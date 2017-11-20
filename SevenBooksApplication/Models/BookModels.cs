using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SevenBooksApplication.Models
{
    public class BookModels
    {
        [Table("Book")]
        public class Book
        {
            [Key]
            [Column(Order = 0)]
            public int BookID { get; set; }

            [Column(Order = 1)]
            [StringLength(120)]
            public string Title { get; set; }

            [Column(Order = 2)]
            [DatabaseGenerated(DatabaseGeneratedOption.None)]
            public int CategoryID { get; set; }

            [Column(Order = 3)]
            [StringLength(22)]
            public string ISBN { get; set; }

            [Column(Order = 4)]
            [StringLength(64)]
            public string Author { get; set; }

            [Column(Order = 5)]
            [DatabaseGenerated(DatabaseGeneratedOption.None)]
            public int Stock { get; set; }

            [Column(Order = 6)]
            public decimal Price { get; set; }
        }

        [Table("Category")]
        public partial class Category
        {
            [Key]
            [Column(Order = 0)]
            public int CategoryID { get; set; }

            [Column(Order = 1)]
            [StringLength(16)]
            public string Name { get; set; }
        }
    }
}