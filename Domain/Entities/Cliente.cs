using TD.Backoffice.API_DbContext.Domain.DTO.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TranSPEi_Cifrado.Domain.Attributes;

namespace TD.Backoffice.API_DbContext.Domain.Entities
{
    public class Cliente
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Column("IdCliente")]
        public long IdCliente { get; set; }
        [SensitiveData]
        public string ? NombreCliente { get; set; }
        [SensitiveData]
        public string ? CuentaClabe { get; set; }
        public bool bActivo { get; set; } = true;
        public int EstatusClienteId { get; set; }
        public string ? ProductoContratado { get; set; }
        [SensitiveData]
        public string ? CognitoUserId { get; set; }
        public string ? BusinessName { get; set; }

        //Banderas expediente
        public bool TieneDocumentos { get; set; } = false;
        public bool TieneEsquemaCobro { get; set; } = false;
        public bool TieneFacturacion { get; set; } = false;
        public bool TieneDatosGenerales { get; set; } = false;

        public EstatusCliente ? Estatus { get; set; }
        public EsquemaCobro ? EsquemaCobro { get; set; } = null!;
        public DatosGenerales ? DatosGenerales { get; set; } = null!;
        public ComisionCliente ? ComisionCliente { get; set; } = null!;
        public ICollection<RangoComisionCliente> ? RangoComisionCliente { get; set; } = null!;
        public ICollection<Documentos> ? Documentos { get; set; }
        public ICollection<UsuariosCliente> ? UsuariosCliente { get; set; }

    }
}
