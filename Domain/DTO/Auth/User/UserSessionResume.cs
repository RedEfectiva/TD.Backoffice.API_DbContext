namespace TD.Backoffice.API_DbContext.Domain.DTO.Auth.User;

public class UserSessionResume
{
    public long UserId { get; set; }

    public string Email { get; set; } = string.Empty;

    public string ActiveSession { get; set; } = string.Empty;
};
