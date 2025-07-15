using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace TD.Backoffice.API_DbContext.Domain.Entities;

/// <summary>
/// 
/// </summary>
public class UserNotification
{
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    [Column("Id")]
    public long Id { get; set; }

    [ForeignKey("User")]
    public long UserId { get; set; }

    [Required]
    [StringLength(64)]
    public string Kind { get; set; } = null!;

    [Required]
    public string Message { get; set; } = string.Empty;

    public string? Detail { get; set; } = null;

    [Required]
    public bool WasReaded { get; set; } = false;

    [Required]
    public DateTime CreatedAt { get; set; }

    public virtual User User { get; set; } = null!;
}
