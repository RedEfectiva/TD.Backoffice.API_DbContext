using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.DTO.Models
{
    public class UpdateClientRequestModel
    {
        public long ClienteId { get; set; }
        public int EstatusClienteId { get; set; }
        public string ? CuentaClabe { get; set; }
    }
}
