using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.DTO.Models {
	public class EscalonadasRequestModel {
		public int Nivel { get; set; }
		public int Inicial { get; set; }
		public int Final { get; set; }
		public decimal ComisionMoneda { get; set; }
	}
}
