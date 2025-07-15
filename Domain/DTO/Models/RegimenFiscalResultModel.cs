using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.DTO.Models
{
    public class RegimenFiscalResultModel
    {
        public Result? Result { get; set; }
        public IEnumerable<RegimenFiscalModel>? Regimenes { get; set; }
    }
}
