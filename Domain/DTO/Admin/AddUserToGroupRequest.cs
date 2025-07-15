namespace TD.Backoffice.API_DbContext.Domain.DTO.Admin;

public class AddUserToGroupRequest
{
    public string Email { get; set; } = string.Empty;

    public string Group { get; set; } = string.Empty;
}
