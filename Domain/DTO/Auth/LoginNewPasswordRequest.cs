using TD.Backoffice.API_DbContext.Domain.DTO.Devices;

namespace TD.Backoffice.API_DbContext.Domain.DTO.Auth;

/// <summary>
/// Login with a new password requested
/// </summary>
public class LoginNewPasswordRequest
{
    public string Id { get; set; } = null!;

    public string Email { get; set; } = null!;

    public string Session { get; set; } = null!;

    public string PlainPassword { get; set; } = null!;

    public DeviceMetadata Device { get; set; } = null!;

    public UsuariosContext? Context { get; set; } = null;
}
