namespace TD.Backoffice.API_DbContext.Domain.DTO.Auth;

public class ExternalLoggedResult
{
    public string UserId { get; set; } = null!;

    public string IdToken { get; set; } = null!;

    public string AccessToken { get; set; } = null!;

    public string RefreshToken { get; set; } = null!;

    public int TokenDuration { get; set; }

    public List<string> Groups { get; set; } = null!;
}
