using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.DTO.Models
{
    public class UsersClientResultModel
    {
        public long IdUsuariosCliente { get; set; }
        public string Nombre { get; set; } = null!;
        public string ? Email { get; set; }
        public int  nIdPerfil { get; set; }
        public bool ? bActivo { get; set; }
        public long ClienteId { get; set; }
    }
}
