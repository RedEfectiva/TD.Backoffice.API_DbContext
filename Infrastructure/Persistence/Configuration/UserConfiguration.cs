namespace Backoffice.Infrastructure.Persistence.Configuration
{
    using TD.Backoffice.API_DbContext.Domain.Entities;
    using Microsoft.EntityFrameworkCore.Metadata.Builders;
    using Microsoft.EntityFrameworkCore;

    public class UserConfiguration : IEntityTypeConfiguration<User>
    {
        public void Configure(EntityTypeBuilder<User> builder)
        {
            builder.ToTable("Users");

            builder.HasKey(up => up.Id);

            builder.Property(up => up.CreatedAt)
                .IsRequired();

            builder.Property(up => up.UpdatedAt)
                .IsRequired(false);

            builder.HasOne(up => up.PerfilNavigation)
                .WithMany(up => up.Usuario)
                .HasForeignKey(up => up.nIdPerfil);
        }
    }
}
