using TD.Backoffice.API_DbContext.Domain.DTO.Devices;

namespace TD.Backoffice.API_DbContext.Domain.DTO.Auth;

/// <summary>
/// This is the request to authenticate with email and password
/// </summary>
public class LoginCredentialsRequest
{
    /// <summary>
    /// The email of the user
    /// </summary>
    public string Email { get; set; } = null!;

    /// <summary>
    /// The plain password of the user
    /// </summary>
    public string PlainPassword { get; set; } = null!;

    /// <summary>
    /// The device metadata request
    /// </summary>
    public DeviceMetadata? Device { get; set; } = null;

    /// <summary>
    /// The context of the request
    /// </summary>
    public UsuariosContext? Context { get; set; } = null;
}
