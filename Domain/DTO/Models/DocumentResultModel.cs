using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.DTO.Models
{
    public class DocumentResultModel
    {
        public long IdDocumento { get; set; }
        public string Nombre { get; set; } = null!;
        public string ? BucketName { get; set; }
        public string ? AWSKey { get; set; }
        public string Extension { get; set; } = null!;
        public bool ? Validado { get; set; }
        public string ? NombreTipoDocumento { get; set; }
        public long ClienteId { get; set; }
    }
}
