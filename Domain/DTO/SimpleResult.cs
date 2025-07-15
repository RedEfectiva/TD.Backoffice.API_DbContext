namespace TD.Backoffice.API_DbContext.Domain.DTO;

public class SimpleResult
{
    public int StatusCode { get; set; }

    public IEnumerable<string>? Errors { get; set; }
}
