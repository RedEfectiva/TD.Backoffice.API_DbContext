using System.ComponentModel.DataAnnotations.Schema;
using TranSPEi_Cifrado.Domain.Attributes;
namespace TD.Backoffice.API_DbContext.Domain.Entities
{
    public class UsuariosCliente
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("IdUsuariosCliente")]
        public long IdUsuariosCliente { get; set; }
        [SensitiveData]
        public string Nombre { get; set; } = null!;
        [SensitiveData]
        public string Email { get; set; } = null!;
        public int nIdPerfil { get; set; }
        public bool bActivo { get; set; } = true;
        public long ClienteId { get; set; }
        public Cliente Cliente { get; set; } = null!;
    }
}
