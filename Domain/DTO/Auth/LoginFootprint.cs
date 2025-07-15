namespace TD.Backoffice.API_DbContext.Domain.DTO.Auth;

public class LoginFootprint
{
    public string SessionId { get; set; } = null!;

    public string Email { get; set; } = null!;

    public string IPAddress { get; set; } = null!;

    public string Device { get; set; } = null!;

    public Dictionary<string, float>? Geolocalization { get; set; }

    public DateTime CreatedAt { get; set; }
}
