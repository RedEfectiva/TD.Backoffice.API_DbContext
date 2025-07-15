using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.Entities
{
    public class ProductoServicioSat
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("IdProductoServicioSat")]
        public int IdProductoServicioSat { get; set; }
        public string? SClaveProducto { get; set; }
        public string? SDescripcion { get; set; }
        public DateTime? DInicioVigencia { get; set; }
        public DateTime? DFinVigencia { get; set; }
        public string? SIVATrasladado { get; set; }
        public string? SIEPSTrasladado { get; set; }
        public string? SComplemento { get; set; }
        public EsquemaCobro? EsquemaCobro { get; set; } = null!;
    }

}
