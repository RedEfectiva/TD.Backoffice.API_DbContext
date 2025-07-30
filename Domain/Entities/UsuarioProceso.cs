namespace TD.Backoffice.API_DbContext.Domain.Entities
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    /// <summary>
    /// Representa el proceso en el sistema.
    /// </summary>
    public class UsuarioProceso
    {
        /// <summary>
        /// Identificador único del proceso.
        /// </summary>
        [Key]
        public int nIdUsuarioProceso { get; set; }

        /// <summary>
        /// Nombre del proceso.
        /// </summary>
        public string sNombre { get; set; } = string.Empty;

        /// <summary>
        /// Descripción del proceso.
        /// </summary>
        public string sDescripcion { get; set; } = string.Empty;

        /// <summary>
        /// Ruta del proceso.
        /// </summary>
        public string sRuta { get; set; } = string.Empty;

        /// <summary>
        /// Indica si el proceso está activo.
        /// </summary>
        public bool bActivo { get; set; } = true;

        /// <summary>
        /// Fecha de creación del proceso.
        /// </summary>
        public DateTime CreatedAt { get; set; }

        /// <summary>
        /// Fecha de actualización del proceso.
        /// </summary>
        public DateTime? UpdatedAt { get; set; } = null;

        /// <summary>
        /// Relaciona el proceso con un proceso padre, si existe.
        /// </summary>
        public int? nIdUsuarioProcesoPadre { get; set; } = null;

        /// <summary>
        /// Icono asociado al proceso para la interfaz de usuario.
        /// </summary>
        [MaxLength(64)]
        public string? sIcono { get; set; } = null;

        /// <summary>
        /// Orden de visualización del proceso en menús.
        /// </summary>
        public int nOrden { get; set; } = 0;

        /// <summary>
        /// Grupo al que pertenece el proceso para agrupación en menús.
        /// </summary>
        [MaxLength(100)]
        public string? sGrupo { get; set; } = null;

        /// <summary>
        /// Representa el proceso padre, si existe.
        /// </summary>
        public virtual UsuarioProceso? UsuarioProcesoPadre { get; set; } = null;

        /// <summary>
        /// Colección de perfiles de usuario asociados a este proceso.
        /// </summary>
        public virtual List<UsuarioPerfil> UsuarioPerfiles { get; } = [];
    }
}
