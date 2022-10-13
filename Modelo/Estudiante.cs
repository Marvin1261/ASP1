using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace Modelo
{
    public class Estudiante { 
        ConexionBD conectar;

        private DataTable drop_sangre()
        {
            DataTable tabla = new DataTable();
            conectar = new ConexionBD();
            conectar.AbrirConexion();
            string consulta = string.Format("SELECT * FROM db_colegio.estudiantes;");
            MySqlDataAdapter query = new MySqlDataAdapter(consulta, conectar.conectar);
            conectar.CerrarConexion();
            query.Fill(tabla);
            return tabla;
        }
        private DataTable grid_estudiantes(){
                DataTable tabla = new DataTable();
                conectar = new ConexionBD();
                conectar.AbrirConexion();
                string consulta = string.Format("select e.id_estudiante as id,e.carne,e.nombres,e.apellidos,e.direccion,e.telefono,e.correo_electronico,e.fecha_nacimiento,p.sangre,e.id_tipo_sangre\r\nFROM estudiantes as e inner  join sangre as p on e.id_tipo_sangre = p.id_tipo_sangre;");
                MySqlDataAdapter query = new MySqlDataAdapter(consulta, conectar.conectar);
                conectar.CerrarConexion();
                query.Fill(tabla);
                return tabla;
        }

        public void grid_estudiantes(GridView grid){
            grid.DataSource = grid_estudiantes();
            grid.DataBind();

        } 

    }
}
