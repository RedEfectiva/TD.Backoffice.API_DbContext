namespace TD.Backoffice.API_DbContext.Domain.DTO;

/// <summary>
/// 
/// </summary>
public class UsuariosContext
{
    public const string ContextKey = "usuarios-context-id";

    public DateTime ReceivedAt { get; set; }

    public DateTime GeneratedAt { get; set; }

    public string SessionId { get; set; } = string.Empty;

    public string IPAddress { get; set; } = string.Empty;

    public string Device { get; set; } = string.Empty;

    public Guid RequestID { get; set; }

    public Object? Details { get; set; } = null;
}
