using TD.Backoffice.API_DbContext.Domain.Common;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.Entities {
	public class HistoricoComision : BaseAuditableEntity {

		[DatabaseGenerated(DatabaseGeneratedOption.Identity)]
		[Column("Id")]
		public int Id { get; set; }

		[Column(TypeName = "decimal(18,6)")]
		public decimal CuotaMinimaMensual { get; set; }
		public int CuotaInfraestructuraUDI { get; set; }

		[Column(TypeName = "decimal(18,6)")]
		public decimal CuotaInfraestructuraUDIMoneda { get; set; }
		public int CostoPorUsuarioAdicional { get; set; }

		[Column(TypeName = "decimal(18,6)")]
		public decimal CostoPorUsuarioAdicionalMoneda { get; set; }


		[Column(TypeName = "decimal(18,6)")]
		public decimal CuotaMinimaMensualOld { get; set; }
		public int CuotaInfraestructuraUDIOld { get; set; }

		[Column(TypeName = "decimal(18,6)")]
		public decimal CuotaInfraestructuraUDIMonedaOld { get; set; }
		public int CostoPorUsuarioAdicionalOld { get; set; }

		[Column(TypeName = "decimal(18,6)")]
		public decimal CostoPorUsuarioAdicionalMonedaOld { get; set; }


		public long IdUserGuarda { get; set; }
		public virtual User UserGuarda { get; set; }
	}
}
