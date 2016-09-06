using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Venue.entities;

namespace Venue
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string search = txtSearch.Text;

            using (var DbContext = new shows_dbEntities()) 
            {
                List<show> results = DbContext.shows.Where(x => x.genre == search).ToList();
                ListView1.Items.Clear();
                foreach (var result in results)
                {
                    var item = new ListViewDataItem(result.showId, result.showId);
                    item.DataItem = new
                    {
                        result.performer,
                        result.genre,
                        result.dates,
                        result.times
                    };
                    ListView1.Items.Add(item);
                }
            }
            ListView1.DataBind();

        }
    }
}