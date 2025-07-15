using TD.Backoffice.API_DbContext.Domain.Entities;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TD.Backoffice.API_DbContext.Domain.DTO.Models
{
    public class EstatusCliente
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("IdEstatusCliente")]
        public int IdEstatusCliente { get; set; }
        public string Nombre { get; set; }
        public int Clave { get; set; }
        public Cliente ? Cliente { get; set; }
    }
}
