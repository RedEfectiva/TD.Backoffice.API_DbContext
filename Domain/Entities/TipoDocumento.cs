using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using TranSPEi_Cifrado.Domain.Attributes;

namespace TD.Backoffice.API_DbContext.Domain.Entities
{
    public class TipoDocumento
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
		[Column("IdTipoDocumento")]
        public long IdTipoDocumento { get; set; }
        [SensitiveData]
        public string? Clave { get; set; }
        public string Descripcion { get; set; } = null!;
        public bool Activo { get; set; }
        public ICollection<Documentos> ? Documentos { get; set; }
    }
}
