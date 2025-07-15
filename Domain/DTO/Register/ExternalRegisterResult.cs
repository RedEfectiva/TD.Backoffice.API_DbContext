namespace TD.Backoffice.API_DbContext.Domain.DTO.Register;

public class ExternalRegisterResult
{
    public string ExternalId { get; set; } = string.Empty;

    public IEnumerable<string>? Errors { get; set; }
}
