using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.Entities
{
    public class FormaPagoSat
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("IdFormaPagoSat")]
        public int IdFormaPagoSat { get; set; }
        public string? SFormaPago { get; set; }
        public string? SDescripcion { get; set; }
        public EsquemaCobro? EsquemaCobro { get; set; } = null!;
    }

}
