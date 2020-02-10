using EADProject.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EADProject.BLL
{
    public class Review
    {
        public string Content { get; set; }

        public Review()
        {

        }

        public Review(string content)
        {
            Content = content;
        }

        public Review getReviews()
        {
            ReviewDAO dao = new ReviewDAO();
            return dao.RetrieveReviews();
        }

        public int insertReview(string content)
        {
            ReviewDAO dao = new ReviewDAO();
            int result = dao.Insert(content);
            return result;
        }
    }
}