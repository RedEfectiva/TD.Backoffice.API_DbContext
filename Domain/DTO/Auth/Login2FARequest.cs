using TD.Backoffice.API_DbContext.Domain.DTO.Devices;

namespace TD.Backoffice.API_DbContext.Domain.DTO.Auth;

/// <summary>
/// Request to auth a user with the 2FA code
/// </summary>
public class Login2FARequest
{
    public string Id { get; set; } = null!;

    public string Email { get; set; } = null!;

    public string Session { get; set; } = null!;

    public string UserCode { get; set; } = null!;

    public DeviceMetadata Device { get; set; } = null!;

    public UsuariosContext? Context { get; set; } = null;
}
