namespace TD.Backoffice.API_DbContext.Domain.DTO.Auth.Token;

public record TokenDetail
{
    public string UserManagerId { get; set; } = string.Empty;

    public string? Email { get; set; } = string.Empty;

    public long ExpiresAt { get; set; }

    public List<string> Groups { get; set; }
}
