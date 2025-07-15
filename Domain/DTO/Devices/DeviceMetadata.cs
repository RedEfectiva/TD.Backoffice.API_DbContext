namespace TD.Backoffice.API_DbContext.Domain.DTO.Devices;

public class DeviceMetadata
{
    public string IPAddress { get; set; } = null!;

    public string UserAgent { get; set; } = null!;

    public float? GeoAccuracy { get; set; }

    public float? GeoLatitude { get; set; }

    public float? GeoLongitude { get; set; }
}
