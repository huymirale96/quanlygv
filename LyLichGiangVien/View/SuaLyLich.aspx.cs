using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LyLichGiangVien.Model;
using System.Data;
using System.Data.SqlClient;

namespace LyLichGiangVien.View
{
    public partial class SuaLyLich : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
              
                if (Request.QueryString["mabs"] != null)
                {
                    ConnectDatabase conn = new ConnectDatabase();
                    using (SqlConnection sqlConnection = conn.connectDatabase())
                    {

                        SqlCommand cmd = new SqlCommand("layLyLichTheoMaBS", sqlConnection);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@mabs", Request.QueryString["mabs"].ToString());
                        SqlDataReader rd = cmd.ExecuteReader();
                        if (rd.HasRows)
                        {
                            while (rd.Read())
                            {
                                sTenDeTai.Text = rd["TenDeTaiNC"].ToString();
                                DateTime dt1 = Convert.ToDateTime(rd["NamBatDau"].ToString());
                                NamBatDau.Text = dt1.ToString("yyyy-MM-dd");
                                DateTime dt = Convert.ToDateTime(rd["NamKetThuc"].ToString());
                                NamKetThuc.Text = dt.ToString("yyyy-MM-dd");
                                GiaiThuong.Text = rd["GiaiThuong"].ToString();
                                MaBS.Value = rd["MaBS"].ToString();

                            }
                        }
                    }
                }
            
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            return;
        }

        protected void btUpdate_Click(object sender, EventArgs e)
        {
            ConnectDatabase conn = new ConnectDatabase();
            using (SqlConnection sqlConnection = conn.connectDatabase())
            {

                SqlCommand cmd = new SqlCommand("update_lylich", sqlConnection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@mabs", MaBS.Value);
                cmd.Parameters.AddWithValue("@nambatdau", NamBatDau.Text);
                cmd.Parameters.AddWithValue("@namketthuc", NamKetThuc.Text);
                cmd.Parameters.AddWithValue("@giaithuong", GiaiThuong.Text);
                cmd.Parameters.AddWithValue("@tendetai", sTenDeTai.Text);
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    l1.Text = "L1 dt "+ sTenDeTai.Text+" giaia"+ GiaiThuong.Text+"   mabs "+ MaBS.Value;
                    //Response.Redirect("quanlyhosokhoahoc.aspx?status=load");
                }


            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            l1.Text = "L1 dt " + sTenDeTai.Text;
        }
    }
}