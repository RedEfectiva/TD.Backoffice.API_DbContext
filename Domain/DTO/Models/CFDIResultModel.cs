using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.DTO.Models
{
    public class CFDIResultModel
    {
        public Result? Result { get; set; }

        public IEnumerable<CFDIModel>? CFDIs { get; set; }
    }
}
