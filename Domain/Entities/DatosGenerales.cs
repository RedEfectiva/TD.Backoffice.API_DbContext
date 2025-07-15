using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TranSPEi_Cifrado.Domain.Attributes;

namespace TD.Backoffice.API_DbContext.Domain.Entities
{
    public class DatosGenerales
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("IdDatosGenerales")]
        public long IdDatosGenerales { get; set; }
        [SensitiveData]
        public string RazonSocial { get; set; } = null!;
        [SensitiveData]
        public string NombreComercial { get; set; } = null!;
        [SensitiveData]
        public string Telefono { get; set; } = null!;
        [SensitiveData]
        public string CorreoElectronico { get; set; } = null!;
        [SensitiveData]
        public string RFC { get; set; } = null!;
        public long ClienteId { get; set; }
        public Cliente ? Cliente { get; set; } = null!;
        public long DireccionId { get; set; }
        public Direccion ? Direccion { get; set; } = null!;
        public string? DepositosMensualesEstimados { get; set; }
        public string? RetirosMensualesEstimados { get; set; }
        public string? TransaccionesMensualesEstimadas { get; set; }
    }
}
