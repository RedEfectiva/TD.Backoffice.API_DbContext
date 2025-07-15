namespace TD.Backoffice.API_DbContext.Domain.DTO.Auth;

public class ExternalLogin2FAResult
{

    public bool IsAuthenticated { get; set; }

    public string? ChallengeName { get; set; }

    public string? ChallengeSession { get; set; }
}
