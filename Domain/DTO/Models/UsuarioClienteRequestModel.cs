using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.DTO.Models
{
    /// <summary>
    /// 
    /// </summary>
    public class UsuarioClienteRequestModel
    {
        /// <summary>
        /// El nombre del usuario
        /// </summary>
        public string Nombre { get; set; } = string.Empty;

        /// <summary>
        /// El email del usuario
        /// </summary>
        public string Email { get; set; } = string.Empty;

        /// <summary>
        /// El perfil del usuario
        /// </summary>
        public int PerfilId { get; set; }
    }
}
