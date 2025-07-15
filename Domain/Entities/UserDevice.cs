using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using TranSPEi_Cifrado.Domain.Attributes;

namespace TD.Backoffice.API_DbContext.Domain.Entities;

/// <summary>
/// 
/// </summary>
public class UserDevice
{
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    [Column("Id")]
    public long Id { get; set; }

    /// <summary>
    /// 
    /// </summary>
    [StringLength(128)]
    [SensitiveData]
    public string IPAddress { get; set; } = string.Empty;

    /// <summary>
    /// 
    /// </summary>
    public string DeviceDetail { get; set; } = string.Empty;

    /// <summary>
    /// 
    /// </summary>
    [SensitiveData]
    public string? Geolocalization { get; set; } = null;

    /// <summary>
    /// 
    /// </summary>
    public DateTime CreatedAt { get; set; }

    /// <summary>
    /// 
    /// </summary>
    // public DateTime? UpdatedAt { get; set; } = null;
}
