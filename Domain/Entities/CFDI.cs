using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TranSPEi_Cifrado.Domain.Attributes;

namespace TD.Backoffice.API_DbContext.Domain.Entities
{
    public class CFDI
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("Id")]
        public long Id { get; set; }
        [SensitiveData]
        public string Clave { get; set; } = null!;
        [SensitiveData]
        public string Nombre { get; set; } = null!;

        public virtual ICollection<EsquemaCobro> EsquemaCobros { get; set; } = new List<EsquemaCobro>();
    }
}
