namespace TD.Backoffice.API_DbContext.Domain.DTO.Notifications;

public class NotificationDTO
{
    public long NotificationId { get; set; }

    public string Kind { get; set; } = null!;

    public string Message { get; set; } = null!;

    public string? Details { get; set; }

    public DateTime CreatedAt { get; set; }
}
