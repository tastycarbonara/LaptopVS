using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LaptopVS.Comments
{
    public class CommentController
    {
        public static string addNewComment(int laptopid, string username, string comment)
        {
            if (comment.Equals(""))
            {
                return "Please fill the comment box";
            }
            else
            {
                return CommentRepository.AddNewComment(laptopid, username, comment);
            }
        }
    }
}