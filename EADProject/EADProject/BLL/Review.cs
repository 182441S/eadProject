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
        public string Title { get; set; }

        public Review()
        {

        }

        public Review(string title, string content)
        {
            Content = content;
            Title = Title;
        }

        public Review getReviews(string a)
        {
            ReviewDAO dao = new ReviewDAO();
            return dao.RetrieveReviews();
        }

        public int insertReview()
        {
            ReviewDAO dao = new ReviewDAO();
            int result = dao.Insert(this);
            return result;
        }
    }
}