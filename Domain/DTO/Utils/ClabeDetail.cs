namespace TD.Backoffice.API_DbContext.Domain.DTO.Utils;
public record ClabeDetail
{
    public string Clabe { get; set; } = string.Empty;

    public string ClabeWithoutVerificationDigit { get; set; } = string.Empty;

    public uint VerificationDigit { get; set; } = 0;

    public bool IsValid { get; set; } = false;
}