using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.DTO.Models.CatalogsSAT
{
    public class MetodoPagoResultModel
    {
        public int IdMetodoPagoSat { get; set; }
        public string? SMetodoPago { get; set; }
        public string? SDescripcion { get; set; }
    }
}
