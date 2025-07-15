namespace TD.Backoffice.API_DbContext.Domain.Entities
{
    using System.ComponentModel.DataAnnotations;

    /// <summary>
    /// Representa un perfil de usuario en el sistema.
    /// </summary>
    public class UsuarioPerfil
    {
        /// <summary>
        /// Identificador único del perfil de usuario.
        /// </summary>
        [Key]
        public int nIdPerfil { get; set; }

        /// <summary>
        /// Nombre del perfil de usuario.
        /// </summary>
        public string sNombre { get; set; } = string.Empty;

        /// <summary>
        /// Descripción del perfil de usuario.
        /// </summary>
        public string sDescripcion { get; set; } = string.Empty;

        /// <summary>
        /// Fecha de creación del proceso.
        /// </summary>
        public DateTime CreatedAt { get; set; }

        /// <summary>
        /// Fecha de actualización del proceso.
        /// </summary>
        public DateTime? UpdatedAt { get; set; } = null;

        /// <summary>
        /// 
        /// </summary>
        public virtual List<UsuarioProceso> UsuarioProcesos { get; } = [];

        /// <summary>
        /// 
        /// </summary>
        public virtual List<User> Usuario { get; } = [];
    }
}
