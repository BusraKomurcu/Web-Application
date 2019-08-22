using dal;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class OgrKayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            yenile();
        }

        public List<Ogrencis> ogrenciler;

        protected void yenile()
        {
            CfOkulEntities ctx = new CfOkulEntities();

            ogrenciler = ctx.Set<Ogrencis>().ToList();

            GridView1.DataSource = ogrenciler;
            GridView1.DataBind();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var ogrAdxi = TextBox1.Text;
            var soyadi = TextBox2.Text;

            //string result = "adı:" + ogrAdxi + "<br/> soyadı:" + soyadi;


            Ogrencis ogr = new Ogrencis();
            ogr.Name = ogrAdxi;
            ogr.Surname = soyadi;

            CfOkulEntities ctx = new CfOkulEntities();
            ctx.Set<Ogrencis>().Add(ogr);
            ctx.SaveChanges();

            yenile();

            //Response.Write(result);
            //Response.End();
            //Response.Redirect("default.aspx");
        }
    }
}