namespace TD.Backoffice.API_DbContext.Domain.DTO.Models
{
    public class AddCommissionsRequestModel
    {
        public IEnumerable<CommissionRequestModel>? Cuotas { get; set; }
        public IEnumerable<EscalonadasRequestModel>? Escalonadas { get; set; }
    }
}
