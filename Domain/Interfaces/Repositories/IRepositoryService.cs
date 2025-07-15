using TD.Backoffice.API_DbContext.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.ChangeTracking;

namespace TD.Backoffice.API_DbContext.Domain.Interfaces.Repositories;

public interface IRepositoryService
{
    public DbSet<User> Users { get; set; }

    public DbSet<UserSession> UsersSessions { get; set; }

    public DbSet<UserNotification> UsersNotifications { get; set; }

    public DbSet<UserDevice> UsersDevices { get; set; }

    EntityEntry<TEntity> Entry<TEntity>(TEntity entity) where TEntity : class;

    Task<int> SaveChangesAsync(CancellationToken cancellationToken);
}
