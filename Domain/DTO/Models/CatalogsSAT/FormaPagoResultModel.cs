using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.DTO.Models.CatalogsSAT
{
    public class FormaPagoResultModel
    {
        public int IdFormaPagoSat { get; set; }
        public string? SFormaPago { get; set; }
        public string? SDescripcion { get; set; }
    }
}
