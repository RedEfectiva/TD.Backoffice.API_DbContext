using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.DTO.Models
{
    public class DatosGeneralesResultModel
    {
        public long IdDatosGenerales { get; set; }
        public string  RazonSocial { get; set; }
        public string NombreComercial { get; set; }
        public string Telefono { get; set; }
        public string CorreoElectronico { get; set; }
        public string RFC { get; set; }
        public long ClienteId { get; set; }
        public string? DepositosMensualesEstimados { get; set; }
        public string? RetirosMensualesEstimados { get; set; }
        public string? TransaccionesMensualesEstimadas { get; set; }
        public DireccionModel ? Direccion { get; set; } = null!;
    }
    
}