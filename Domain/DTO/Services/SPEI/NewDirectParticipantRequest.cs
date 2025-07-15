using TD.Backoffice.API_DbContext.Domain.Entities;

namespace TD.Backoffice.API_DbContext.Domain.DTO.Services.SPEI;

public class NewDirectParticipantRequest
{
    public User user { get; set; } = null!;

    public string RFC { get; set; } = string.Empty;

    public string RazonSocial { get; set; } = string.Empty;

    public string Names { get; set; } = string.Empty;

    public string LastName1 { get; set; } = string.Empty;

    public string LastName2 { get; set; } = string.Empty;

    public string PhoneNumber { get; set; } = string.Empty;
}
