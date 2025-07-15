using System.ComponentModel.DataAnnotations.Schema;

namespace TD.Backoffice.API_DbContext.Domain.Entities
{
    public class Configuraciones
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("IdConfiguracion")]
        public long IdConfiguracion { get; set; }
        public string NombreServicio { get; set; } = null!;
        public string TipoServicio { get; set; } = null!;
        public string ClaveServicio { get; set; } = null!;
        public string NombreValorPrincipal { get; set; } = null!;
        public string ValorPrincipal { get; set; } = null!;
        public string Url { get; set; } = null!;
        public string Region { get; set; } = null!;
    }
}