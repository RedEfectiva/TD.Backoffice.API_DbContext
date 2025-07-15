namespace TD.Backoffice.API_DbContext.Domain.DTO.Auth;

public class UpdateGeolocalizationSessionRequest
{
    public float Accuracy { get; set; }

    public float Latitude { get; set; }

    public float Longitude { get; set; }
}
