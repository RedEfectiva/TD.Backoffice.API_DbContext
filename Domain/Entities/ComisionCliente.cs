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
    public class ComisionCliente: BaseAuditableEntity
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("IdComisionCliente")]
        public int IdComisionCliente { get; set; }

        [Column(TypeName = "decimal(18,6)")]
        public decimal CuotaMinimaMensual { get; set; }
        public int CuotaInfraestructuraUDI { get; set; }

        [Column(TypeName = "decimal(18,6)")]
        public decimal CuotaInfraestructuraUDIMoneda { get; set; }
        public int CostoPorUsuarioAdicional { get; set; }

        [Column(TypeName = "decimal(18,6)")]
        public decimal CostoPorUsuarioAdicionalMoneda { get; set; }

        public long ClienteId { get; set; }
        public Cliente Cliente { get; set; } = null!;
    }
}
