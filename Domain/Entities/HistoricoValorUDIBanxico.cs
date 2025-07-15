using TD.Backoffice.API_DbContext.Domain.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.Entities
{
	public class HistoricoValorUDIBanxico : BaseAuditableEntity {
		public int IdHistorico { get; set; }
		public DateTime dFecha { get; set; }
		public decimal nValor { get; set; }
	}
}
