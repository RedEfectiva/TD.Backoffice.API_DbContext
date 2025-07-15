using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.DTO.Models
{
    public class UpdateEsquemaCobroRequestModel
    {
        public long Id { get; set; }
        public long ClientId { get; set; }

        public string ComercialCliente { get; set; }

        public string TipoEsquema { get; set; }

        public long IdRegimenFiscal { get; set; }

        public long IdCFDI { get; set; }
        public int FormaPagoSatId { get; set; }
        public int MetodoPagoSatId { get; set; }
    }
}
