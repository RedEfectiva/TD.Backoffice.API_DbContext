using TD.Backoffice.API_DbContext.Domain.Common;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.Entities {
	public class HistoricoRangoComision : BaseAuditableEntity {

		[DatabaseGenerated(DatabaseGeneratedOption.Identity)]
		[Column("Id")]
		public int Id { get; set; }
		public int Nivel { get; set; }
		public int RangoInicial { get; set; }
		public int RangoFinal { get; set; }

		[Column(TypeName = "decimal(18,6)")]
		public decimal CantidadComisionEnMoneda { get; set; }


		public int NivelOld { get; set; }
		public int RangoInicialOld { get; set; }
		public int RangoFinalOld { get; set; }

		[Column(TypeName = "decimal(18,6)")]
		public decimal CantidadComisionEnMonedaOld { get; set; }



		public long IdUserGuarda { get; set; }
		public virtual User UserGuarda { get; set; }
	}
}
