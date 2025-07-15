// Licensed to the .NET Foundation under one or more agreements.

namespace TD.Backoffice.API_DbContext.Domain.DTO.Register;

/// <summary>
/// Request to create a new account
/// </summary>
public class RegisterRequest
{
    /// <summary>
    /// The bussiness name
    /// </summary>
    public string BusinessName { get; set; } = null!;

    /// <summary>
    /// The email for the new account
    /// </summary>
    public string Email { get; set; } = null!;

    /// <summary>
    /// The password for the new account
    /// </summary>
    public string Password { get; set; } = null!;

    /// <summary>
    /// The product required
    /// </summary>
    public string ProductRequested { get; set; } = null!;
}
