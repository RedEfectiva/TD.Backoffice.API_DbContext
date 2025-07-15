namespace TD.Backoffice.API_DbContext.Domain.Entities
{
    /// <summary>
    /// Representa una sección asociada al perfil de un usuario.
    /// </summary>
    public class UsuarioPerfilProceso
    {
        /// <summary>
        /// Identificador del perfil de usuario al que pertenece la sección.
        /// </summary>
        public int nIdPerfil { get; set; }

        /// <summary>
        /// Identificador de la sección asociada al perfil del usuario.
        /// </summary>
        public int nIdUsuarioSeccion { get; set; }

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
        public virtual UsuarioPerfil nIdPerfilNavigation { get; set; } = null!;

        /// <summary>
        /// 
        /// </summary>
        public virtual UsuarioProceso nIdUsuarioSeccionNavigation { get; set; } = null!;
    }
}
