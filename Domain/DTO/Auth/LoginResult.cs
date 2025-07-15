namespace TD.Backoffice.API_DbContext.Domain.DTO.Auth;

/// <summary>
/// This represents the user's login result
/// </summary>
public class LoginResult
{
    /// <summary>
    /// This
    /// </summary>
    public int StatusCode { get; set; }

    /// <summary>
    /// The email of the user
    /// </summary>
    public string? Email { get; set; } = null;

    /// <summary>
    /// The ID of the user
    /// </summary>
    public string? UserId { get; set; } = null;

    /// <summary>
    /// 
    /// </summary>
    public string? SessionId { get; set; } = null;

    /// <summary>
    /// The MFA is enabled
    /// </summary>
    public bool? MFAEnabled { get; set; } = null;

    /// <summary>
    /// The ID token in the user manager
    /// </summary>
    public string? IdToken { get; set; } = null;

    /// <summary>
    /// The token in the user manager
    /// </summary>
    public string? AccessToken { get; set; } = null;

    /// <summary>
    /// The name of the challenge
    /// </summary>
    public string? ChallengeName { get; set; } = null;

    /// <summary>
    /// The session of the challenge
    /// </summary>
    public string? ChallengeSession { get; set; } = null;

    /// <summary>
    /// The groups of the user
    /// </summary>
    public List<string>? Groups { get; set; } = null;

    /// <summary>
    /// The errors
    /// </summary>
    public string? Errors { get; set; } = null;

    public static LoginResult CreateSuccess(
        string email,
        string cognitoId,
        string accessTokenAPI,
        string tokenId,
        bool mfaEnabled,
        List<string> groups
    )
    {
        return new LoginResult
        {
            StatusCode = 0, // Success
            Email = email,
            UserId = cognitoId,
            MFAEnabled = mfaEnabled,
            Groups = groups,
            AccessToken = accessTokenAPI,
            IdToken = tokenId,
        };
    }

    public static LoginResult CreateFailure(string error)
    {
        return new LoginResult
        {
            StatusCode = 300,
            Errors = error,
        };
    }
}
