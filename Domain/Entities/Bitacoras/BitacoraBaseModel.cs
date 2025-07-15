namespace TD.Backoffice.API_DbContext.Domain.Entities.Bitacoras
{
    public class BitacoraBaseModel
    {
        public string ExternalId { get; set; } = string.Empty;
        public string Usuario { get; set; } = string.Empty;
        public string FechaCambio { get; set; } = string.Empty;
        public string HoraCambio { get; set; } = string.Empty;
        public int IdAccion { get; set; }
        public string ? DireccionIp { get; set; } = string.Empty;
        public string Navegador { get; set; } = string.Empty;
        public string Plataforma { get; set; } = string.Empty;
        public int IdModulo { get; set; }
    }

    public class BitacoraWithChangesBaseModel
    {
        public string ExternalId { get; set; } = string.Empty;
        public string Usuario { get; set; } = string.Empty;
        public string FechaCambio { get; set; } = string.Empty;
        public string HoraCambio { get; set; } = string.Empty;
        public int IdAccion { get; set; }
        public List<CambioEfectuadoBaseModel> CambiosEfectuados { get; set; } = null!;
        public string DireccionIp { get; set; } = string.Empty;
        public string Navegador { get; set; } = string.Empty;
        public string Plataforma { get; set; } = string.Empty;
        public int IdModulo { get; set; }
    }

    public class CambioEfectuadoBaseModel
    {
        public string NombreCampo { get; set; } = string.Empty;
        public string ValorAnterior { get; set; } = string.Empty;
        public string ValorNuevo { get; set; } = string.Empty;
    }
}
