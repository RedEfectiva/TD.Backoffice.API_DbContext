using System.Text.RegularExpressions;

namespace TD.Backoffice.API_DbContext.Domain.Common.Helpers;
public static class SecurityHelper
{
    private static readonly TimeSpan regexTimeout = TimeSpan.FromMilliseconds(100);

    public static bool IsValidBrowserInfo(string input, out string sanitized)
    {
        sanitized = string.Empty;

        if (string.IsNullOrWhiteSpace(input))
            return false;

        if (input.Length > 500)
            return false;

        var allowedPattern = @"^[a-zA-Z0-9\s\.\-_\/\(\);:,\[\]\{\}\+]+$";
        if (!Regex.IsMatch(input, allowedPattern, RegexOptions.None, regexTimeout))
        return false;
        
        sanitized = input
            .Replace("<", "")
            .Replace(">", "")
            .Replace("\"", "")
            .Replace("'", "")
            .Replace("script", "")
            .Replace("javascript", "")
            .Trim();

        return true;
    }
}
