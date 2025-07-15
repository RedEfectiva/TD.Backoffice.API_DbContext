using TD.Backoffice.API_DbContext.Domain.Common;
using TD.Backoffice.API_DbContext.Domain.DTO;
using System.ComponentModel.DataAnnotations.Schema;

namespace TD.Backoffice.API_DbContext.Domain.Entities {
	public class Comision:BaseAuditableEntity {

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
		
		public long IdUserGuarda { get; set; }
		public long IdUserActualiza { get; set; }

		public virtual User UserGuarda { get; set; }
		public virtual User UserActualiza { get; set; }
	}
}
