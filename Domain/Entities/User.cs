// Licensed to the .NET Foundation under one or more agreements.

using TD.Backoffice.API_DbContext.Domain.Common;
using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using TranSPEi_Cifrado.Domain.Attributes;

namespace TD.Backoffice.API_DbContext.Domain.Entities;

/// <summary>
/// This represents a user of the TDPlus
/// </summary>
[Index("ExternalId", IsUnique = true)]
[Index("Email", IsUnique = true)]
public class User : BaseAuditableEntity
{
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    [Column("Id")]
    public long Id { get; set; }

    /// <summary>
    /// This is the ID of the user in the external service (Cognito User Pool)
    /// </summary>
    [Required]
    [StringLength(128)]
    public string ExternalId { get; set; } = null!;

    /// <summary>
    /// This is the email of the user
    /// </summary>
    [Required]
    [StringLength(128)]
    [SensitiveData]
    public string Email { get; set; } = null!;

    /// <summary>
    /// This track if the MFA is enable
    /// </summary>
    public bool MFAEnabled { get; set; } = false;

    /// <summary>
    ///
    /// </summary>
    [StringLength(128)]
    public string? MFAPreference { get; private set; } = null;

    /// <summary>
    /// Determine if the user was confirmed
    /// </summary>
    public bool IsConfirmed { get; set; } = false;

    /// <summary>
    /// The date when the user was confirmed
    /// </summary>
    public DateTime? ConfirmedAt { get; set; } = null;

    public string? BusinessName { get; set; } = null;
    public string? ProductRequested { get; set; } = null;

    /// <summary>
    /// This track if the user is active (soft delete)
    /// </summary>
    public bool IsActive { get; set; } = true;

    /// <summary>
    /// Perfil del usuario.
    /// </summary>
    public int? nIdPerfil { get; set; } = null;
    public virtual UsuarioPerfil? PerfilNavigation { get; set; } = null;
}
