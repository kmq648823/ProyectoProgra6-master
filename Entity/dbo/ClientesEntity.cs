using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class ClientesEntity
    {
        public int? Cedula { get; set; }//? por ser llave foranea
        public string Nombre { get; set; }
        public string Apellidos { get; set; }
        public string Direccion { get; set; }
        public DateTime FechaNacimiento { get; set; } = DateTime.Now;
        public string Telefono { get; set; }
    }
}
