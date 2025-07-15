using TD.Backoffice.API_DbContext.Domain.Common;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using TranSPEi_Cifrado.Domain.Attributes;

namespace TD.Backoffice.API_DbContext.Domain.Entities;

/// <summary>
/// This represents the session of a user.
/// </summary>
public class UserSession : BaseEntity
{
    /// <summary>
    /// The session is active
    /// </summary>
    public const string ActiveStatusKey = "ACTIVE";

    /// <summary>
    /// The session is a new request when exists an ACTIVE session
    /// </summary>
    public const string RequestStatusKey = "REQUEST";

    /// <summary>
    /// The session is disabled
    /// </summary>
    public const string DisableStatusKey = "DISABLED";

    /// <summary>
    /// The user identifier
    /// </summary>
    [ForeignKey("User")]
    public long UserId { get; set; }

    /// <summary>
    /// The device associated to the session
    /// </summary>
    [ForeignKey("UserDevice")]
    public long? UserDeviceId { get; set; }

    /// <summary>
    /// This is the status of the session. The status allowed are "ACTIVE", "REQUEST", or "DISABLED".
    /// </summary>
    [Required]
    [StringLength(64)]
    public string Status { get; set; } = null!;

    /// <summary>
    /// This is the access token
    /// 
    /// Autorizar acceso a recursos protegidos.
    /// Permisos, alcance, autenticación del token.
    /// Llamadas a APIs o servicios protegidos.
    /// 
    /// Same as the AWS Cognito AuthenticationResultType
    /// </summary>
    /// <seealso cref="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-access-token.html"/>
    /// <seealso cref="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AuthenticationResultType.html"/>
    [SensitiveData]
    public string? AccessToken { get; set; }

    /// <summary>
    /// This is the user's ID token.
    /// 
    /// Proveer información del usuario autenticado.
    /// Atributos del usuario (claims).
    /// Identificación del usuario.
    /// 
    /// Same as the AWS Cognito AuthenticationResultType
    /// </summary>
    /// <seealso cref="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-id-token.html"/>
    /// <seealso cref="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AuthenticationResultType.html"/>
    public string? IdToken { get; set; }

    /// <summary>
    /// This is the refresh token
    /// 
    /// 
    /// Same as the AWS Cognito AuthenticationResultType
    /// https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_AuthenticationResultType.html
    /// </summary>
    public string? RefreshToken { get; set; } = null;

    /// <summary>
    /// 
    /// </summary>
    public DateTime CreatedAt { get; set; }

    /// <summary>
    /// 
    /// </summary>
    public DateTime? UpdatedAt { get; set; }

    /// <summary>
    /// 
    /// </summary>
    public DateTime? BlockedUntil { get; set; }

    /// <summary>
    /// 
    /// </summary>
    public virtual User User { get; set; } = null!;

    /// <summary>
    /// 
    /// </summary>
    public virtual UserDevice UserDevice { get; set; } = null!;
}
