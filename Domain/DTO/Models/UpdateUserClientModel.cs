namespace TD.Backoffice.API_DbContext.Domain.DTO.Models
{
    /// <summary>
    /// Modelo para actualizar datos de un usuario cliente
    /// </summary>
    public class UpdateUserClientModel
    {
        /// <summary>
        /// Nuevo nombre del usuario cliente
        /// </summary>
        public string Nombre { get; set; } = null!;

        /// <summary>
        /// Nuevo email del usuario cliente
        /// </summary>
        public string Email { get; set; } = null!;

        /// <summary>
        /// Nuevo perfil del usuario cliente
        /// </summary>
        public int PerfilId { get; set; }
    }
}