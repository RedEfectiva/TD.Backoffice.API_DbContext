using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.Entities
{
    public class Documentos
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("IdDocumento")]
        public long IdDocumento { get; set; }
        public string Nombre { get; set; } = null!;
        public string? BucketName { get; set; }
        public string? AWSKey { get; set; }
        public string Extension { get; set; } = null!;
        public bool? Validado { get; set; }
        public long ClienteId { get; set; }
        public long TipoDocumentoId { get; set; }
        public Cliente Cliente { get; set; } = null!;
        public TipoDocumento TipoDocumento { get; set; } = null!;
    }
}
