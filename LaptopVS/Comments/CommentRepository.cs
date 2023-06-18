using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LaptopVS.Model;

namespace LaptopVS.Comments
{
    public class CommentRepository
    {
        public static string AddNewComment(int laptopid, string username, string comment)
        {
            laptopsEntities3 db = new laptopsEntities3();
            Comment com = CommentFactory.newComment(laptopid, username, comment);
            db.Comments.Add(com);
            db.SaveChanges();

            return "Success";
        }
        public static List<Comment> GetComments()
        {
            laptopsEntities3 db = new laptopsEntities3();
            return db.Comments.ToList();
        }
    }
}