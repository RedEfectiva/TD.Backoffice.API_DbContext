namespace TD.Backoffice.API_DbContext.Domain.Common;

public interface IKeyable
{
    public string Key { get; set; }

    public string GenerateKey();
}
