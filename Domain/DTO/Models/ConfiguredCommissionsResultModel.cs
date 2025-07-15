namespace TD.Backoffice.API_DbContext.Domain.DTO.Models
{
    public class ConfiguredCommissionsResultModel
    {
        public Result? Result { get; set; }
        public IEnumerable<CommissionResultModel>? Cuotas { get; set; }
        public IEnumerable<EscalonadasResultModel>? Escalonadas { get; set; }
    }
}
