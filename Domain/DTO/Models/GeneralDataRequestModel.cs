using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.DTO.Models
{
    public class GeneralDataRequestModel
    {
        public string RazonSocial { get; set; }
        public string NombreComercial { get; set; }
        public string Telefono { get; set; }
        public string CorreoElectronico { get; set; }
        public string RFC { get; set; }
        public long ClienteId { get; set; }
        public string? DepositosMensualesEstimados { get; set; }
        public string? RetirosMensualesEstimados { get; set; }
        public string? TransaccionesMensualesEstimadas { get; set; }
        public DireccionModel ? Direccion { get; set; }
    }


    public class DireccionModel 
    {
        public string ? DireccionFiscal { get; set; }
        public string ? NumExterior { get; set; }
        public string ? NumInterior { get; set; }
        public int CodigoPostal { get; set; }
        public string ? EstadoMexicanoNombre { get; set; }
        public string ? MunicipioMexicanoNombre { get; set; }
        public string ? ColoniaMexicanaNombre { get; set; }
        public string ? CiudadNombre { get; set; }
        public string ? Pais { get; set; }
    }
}
