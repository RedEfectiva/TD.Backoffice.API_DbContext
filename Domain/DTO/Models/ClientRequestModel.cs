using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.DTO.Models
{
    public class ClientRequestModel
    {
        public string ? NombreCliente { get; set; }
        public string ? ProductoContratado { get; set; }
        public string ? CognitoUserId { get; set; }
        public string ? BusinessName { get; set; }
    }
}
