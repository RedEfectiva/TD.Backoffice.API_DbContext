using TD.Backoffice.API_DbContext.Domain.Common;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.Entities
{
    public class RangoComisionCliente : BaseAuditableEntity
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("IdRangoComisionCliente")]
        public int IdRangoComisionCliente { get; set; }
        public int Nivel { get; set; }
        public int RangoInicial { get; set; }
        public int RangoFinal { get; set; }

        [Column(TypeName = "decimal(18,6)")]
        public decimal CantidadComisionEnMoneda { get; set; }
        public long ClienteId { get; set; }
        public Cliente Cliente { get; set; } = null!;
    }
}
