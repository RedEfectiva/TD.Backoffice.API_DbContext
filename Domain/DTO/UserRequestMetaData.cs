namespace TD.Backoffice.API_DbContext.Domain.DTO
{
    public class UserRequestMetaData
    {
        public string ExternalId { get; set; } = string.Empty;
        public string UsuarioEmail { get; set; } = string.Empty;
        public string DireccionIp { get; set; } = string.Empty;
        public string Navegador { get; set; } = string.Empty;
        public string Plataforma { get; set; } = string.Empty;
    }
}