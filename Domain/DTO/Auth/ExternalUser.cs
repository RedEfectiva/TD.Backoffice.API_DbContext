namespace TD.Backoffice.API_DbContext.Domain.DTO.Auth;

public class ExternalUser
{
    public string Id { get; set; } = null!;
    public List<string> Groups { get; set; } = null!;
}
