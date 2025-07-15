namespace TD.Backoffice.API_DbContext.Domain.DTO.Register;

public class RegisterResult
{

    public int StatusCode { get; set; }

    public string? Id { get; set; }

    public IEnumerable<string>? Errors { get; set; }

    public static RegisterResult CreateSuccess()
    {
        return new RegisterResult
        {
            StatusCode = 0,
        };
    }

    public static RegisterResult CreateFailure(string error)
    {
        return new RegisterResult
        {
            StatusCode = 100,
            Errors = new List<string> { error },
        };
    }
}
