// TD.Backoffice.API_DbContext.Domain.DTO.Models/OperacionCuentaConcentradoraModel.cs
using System.ComponentModel.DataAnnotations;
using System.Text.Json.Serialization;

namespace TD.Backoffice.API_DbContext.Domain.DTO.Models
{
    public class OperacionCuentaConcentradoraModel
    {
        [JsonPropertyName("TipoOperacion")]
        [Required]
        public int TipoOperacion { get; set; }

        [JsonPropertyName("Monto")]
        [Required]
        [Range(0.01, double.MaxValue)]
        public decimal Monto { get; set; }

        [JsonPropertyName("FechaOperacion")]
        [Required]
        public DateTime? FechaOperacion { get; set; }

        [JsonPropertyName("HoraOperacion")]
        [Required]
        public TimeSpan? HoraOperacion { get; set; }

        [JsonPropertyName("CuentraBenef")]
        [Required]
        [StringLength(18)]
        public string CuentaBenef { get; set; }

        [JsonPropertyName("ClaveRastreo")]
        [Required]
        public string ClaveRastreo { get; set; }

        [JsonPropertyName("URLCep")]
        [Required]
        public string UrlCep { get; set; }

        [JsonPropertyName("IdParticipante")]
        [Required]
        [Range(1, int.MaxValue)]
        public int IdParticipante { get; set; }
    }
}