namespace TD.Backoffice.API_DbContext.Domain.DTO.Auth;

public class ExternalChallengeResult
{
    public string? Name { get; set; }

    public string? Session { get; set; }

    public string? RefreshSession { get; set; }

    public int? Duration { get; set; }
}
