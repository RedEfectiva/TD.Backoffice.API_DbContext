using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.DTO.Models
{
    public class ClienteResponseModel
    {
        public long IdCliente { get; set; }
        public string NombreCliente { get; set; }
        public string ? CuentaClabe { get; set; }
        public int EstatusClienteId { get; set; }
        public string EstatusCliente { get; set; }
        public string ProductoContratado { get; set; }
        public string CorreoElectronico { get; set; }
        public string ? CognitoUserId { get; set; }
        public string ? BusinessName { get; set; }
    }
}
