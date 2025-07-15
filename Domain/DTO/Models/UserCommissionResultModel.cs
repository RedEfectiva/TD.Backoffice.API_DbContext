using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.DTO.Models
{
    public class UserCommissionResultModel
    {
        public CommissionResultModel? Commission { get; set; }
        public IEnumerable<EscalonadasResultModel> Escalonadas { get; set; } = new List<EscalonadasResultModel>();
    }
}
