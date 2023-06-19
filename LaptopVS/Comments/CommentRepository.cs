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
            laptopsEntities4 db = new laptopsEntities4();
            Comment com = CommentFactory.newComment(laptopid, username, comment);
            db.Comments.Add(com);
            db.SaveChanges();

            return "Success";
        }
        public static List<Comment> GetComments()
        {
            laptopsEntities4 db = new laptopsEntities4();
            return db.Comments.ToList();
        }
    }
}