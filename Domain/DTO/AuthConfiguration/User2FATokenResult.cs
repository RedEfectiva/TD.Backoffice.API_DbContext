namespace TD.Backoffice.API_DbContext.Domain.DTO.AuthConfiguration;

public class User2FATokenResult
{
    public int StatusCode { get; set; }

    public string? Token { get; set; } = string.Empty;

    public string? Errors { get; set; } = string.Empty;
}
