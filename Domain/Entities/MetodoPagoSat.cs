using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.Entities
{
    public class MetodoPagoSat
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("IdMetodoPagoSat")]
        public int IdMetodoPagoSat { get; set; }
        public string? SMetodoPago { get; set; }
        public string? SDescripcion { get; set; }
        public EsquemaCobro? EsquemaCobro { get; set; } = null!;
    }
}
