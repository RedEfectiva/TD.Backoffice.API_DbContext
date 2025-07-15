using System.Diagnostics.Contracts;

namespace TD.Backoffice.API_DbContext.Domain.Common;

public static class KeyGenerator
{
    public static string Generate()
    {
        return Generate(Guid.NewGuid().ToString("D").Substring(24));
    }

    public static string Generate(string input)
    {
        Contract.Requires(!string.IsNullOrWhiteSpace(input));
        return System.Net.WebUtility.UrlEncode(input.Replace(" ", "_").Replace("-", "_").Replace("&", "and"));
    }
}
