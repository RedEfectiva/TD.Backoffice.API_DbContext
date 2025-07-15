using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.DTO.Models
{
    public class DocumentRequestModel
    {
        public string ? Nombre { get; set; }
        public string ? BucketName { get; set; }
        public string ? AWSKey { get; set; }
        public string ? Extension { get; set; }
        public bool ? Validado { get; set; }
        public long TipoDocumentoId { get; set; }
        public long ClienteId { get; set; }
    }
}
