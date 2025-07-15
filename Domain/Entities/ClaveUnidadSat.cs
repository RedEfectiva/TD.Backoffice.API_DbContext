using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TranSPEi_Cifrado.Domain.Attributes;

namespace TD.Backoffice.API_DbContext.Domain.Entities
{
    public class ClaveUnidadSat
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("IdClaveUnidadSat")]
        public int IdClaveUnidadSat { get; set; }
        public string? SUnidad { get; set; }
        [SensitiveData]
        public string? SNombre { get; set; }
        public string? SDescripcion { get; set; }
        public DateTime? DInicioVigencia { get; set; }
        public DateTime? DFinVigencia { get; set; }
        public string? SSimbolo { get; set; }
        public EsquemaCobro? EsquemaCobro { get; set; } = null!;
    }

}
