namespace TD.Backoffice.API_DbContext.Domain.DTO.Register;

public class RegisterConfirmationRequest
{
    public string Email { get; set; } = null!;

    public string ConfirmationCode { get; set; } = null!;
}
