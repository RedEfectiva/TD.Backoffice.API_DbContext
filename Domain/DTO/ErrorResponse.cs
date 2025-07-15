using System.ComponentModel.DataAnnotations;

namespace TD.Backoffice.API_DbContext.Domain.DTO;

[Serializable]
public record ErrorResponse
{
    [Required]
    public string Message { get; set; } = string.Empty;
}
