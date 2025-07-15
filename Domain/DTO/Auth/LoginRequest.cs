namespace TD.Backoffice.API_DbContext.Domain.DTO.Auth;

public class LoginRequest
{
    public string Id { get; set; } = null!;
    public string Email { get; set; } = null!;
    public string PlainPassword { get; set; } = null!;
}
