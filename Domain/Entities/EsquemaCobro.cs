using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.Entities
{
    public class EsquemaCobro
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("Id")]
        public long Id { get; set; }
        public string ComercialCliente { get; set; }
        public string TipoEsquema { get; set; }
        public long IdRegimenFiscal { get; set;  }
        public virtual RegimenFiscal RegimenFiscal { get; set; } = null!;
        public long IdCFDI { get; set; } 
        public virtual CFDI CFDI { get; set; } = null!;
        public long ClienteId { get; set; }
        public Cliente Cliente { get; set; } = null!;

        //Catalogos
        public int MetodoPagoSatId { get; set; }
        public MetodoPagoSat MetodoPagoSat { get; set; } = null!;
        public int FormaPagoSatId { get; set; }
        public FormaPagoSat FormaPagoSat { get; set; } = null!;
        public int ClaveUnidadSatId { get; set; }
        public ClaveUnidadSat ClaveUnidadSat { get; set; } = null!;
        public int ProductoServicioSatId { get; set; }
        public ProductoServicioSat ProductoServicioSat { get; set; } = null!;
    }
}
