namespace TD.Backoffice.API_DbContext.Domain.DTO.Auth;

public class LogoutFootprint
{
    public string Email { get; set; } = null!;

    public string SessionId { get; set; } = null!;

    public DateTime CreatedAt { get; set; }
}
