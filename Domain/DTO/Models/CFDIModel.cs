using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.DTO.Models
{
    public class CFDIModel
    {
        public long Id { get; set; }

        public string Clave { get; set; } = null!;

        public string Nombre { get; set; } = null!;
    }
}
