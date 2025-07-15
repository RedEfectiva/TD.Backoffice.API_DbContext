using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.DTO.Models
{
   public  class CommissionRequestModel {
		public decimal CuotaMinMensual { get; set; }
		public int CuotaInfraUDI { get; set; }
		public int CostoUsuarioAdicional { get; set; }
	}
}
