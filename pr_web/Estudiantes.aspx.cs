using Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pr_web
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Estudiante estudiante;
        protected void Page_Load(object sender, EventArgs e){
            if (!IsPostBack){
                estudiante = new Estudiante();
                estudiante.grid_estudiantes(grid_estudiantes);
            }

        }

        protected void btn_crear_Click(object sender, EventArgs e)
        {
            

        }
    }
}