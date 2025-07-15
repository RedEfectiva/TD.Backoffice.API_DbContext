namespace TD.Backoffice.API_DbContext.Domain.DTO.Auth;

public class ExternalLoginResult
{

    public bool IsAuthenticated { get; set; }

    public ExternalLoggedResult? Logged { get; set; }

    public ExternalChallengeResult? Challenge { get; set; }

    public string? ErrorMessage { get; set; }
}
