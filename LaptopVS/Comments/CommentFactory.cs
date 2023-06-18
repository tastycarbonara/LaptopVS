using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LaptopVS.Model;

namespace LaptopVS.Comments
{
    public class CommentFactory
    {
        public static Comment newComment(int laptopid, string username, string comment)
        {
            Comment com = new Comment();
            com.LaptopId = laptopid;
            com.Username = username;
            com.Comment1 = comment;
            return com;
        }
    }
}