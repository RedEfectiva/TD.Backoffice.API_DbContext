using TD.Backoffice.API_DbContext.Domain.Common;
using System.ComponentModel.DataAnnotations.Schema;

namespace TD.Backoffice.API_DbContext.Domain.Entities {
	public class RangoComision : BaseAuditableEntity {

		[DatabaseGenerated(DatabaseGeneratedOption.Identity)]
		[Column("Id")]
		public int Id { get; set; }
		public int Nivel { get; set; }
		public int RangoInicial { get; set; }
		public int RangoFinal { get; set; }

		[Column(TypeName = "decimal(18,6)")]
		public decimal CantidadComisionEnMoneda { get; set; }


		public long IdUserGuarda { get; set; }
		public long IdUserActualiza { get; set; }

		public virtual User UserGuarda { get; set; }
		public virtual User UserActualiza { get; set; }
	}
}
