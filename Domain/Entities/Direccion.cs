using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TranSPEi_Cifrado.Domain.Attributes;

namespace TD.Backoffice.API_DbContext.Domain.Entities
{
    public class Direccion
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("IdDireccion")]
        public long IdDireccion { get; set; }
        [SensitiveData]
        public string? DireccionFiscal { get; set; } = null!;
        [SensitiveData]
        public string? sNumExterior { get; set; } = null!;
        [SensitiveData]
        public string? sNumInterior { get; set; }= null!;
        public int nCodigoPostal { get; set; }
        [SensitiveData]
        public string? EstadoMexicanoNombre { get; set; }
        [SensitiveData]
        public string? MunicipioMexicanoNombre { get; set; }
        [SensitiveData]
        public string? ColoniaMexicanaNombre { get; set; }
        [SensitiveData]
        public string? CiudadNombre { get; set; }
        [SensitiveData]
        public string? Pais { get; set; } = null!;

        public DatosGenerales DatosGenerales { get; set; } = null!;
    }
}
