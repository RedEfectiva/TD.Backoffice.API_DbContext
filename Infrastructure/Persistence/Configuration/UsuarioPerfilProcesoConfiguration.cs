namespace Backoffice.Infrastructure.Persistence.Configuration
{
    using TD.Backoffice.API_DbContext.Domain.Entities;
    using Microsoft.EntityFrameworkCore.Metadata.Builders;
    using Microsoft.EntityFrameworkCore;

    public class UsuarioPerfilProcesoConfiguration : IEntityTypeConfiguration<UsuarioPerfilProceso>
    {
        public void Configure(EntityTypeBuilder<UsuarioPerfilProceso> builder)
        {
            builder.ToTable("UsuarioPerfilProceso");

            builder.HasKey(up => new { up.nIdPerfil, up.nIdUsuarioSeccion });

            builder.Property(up => up.CreatedAt)
                .IsRequired();

            builder.Property(up => up.UpdatedAt)
                .IsRequired(false);

            builder.HasOne(up => up.nIdPerfilNavigation)
                .WithMany()
                .HasForeignKey(up => up.nIdPerfil);

            builder.HasOne(up => up.nIdUsuarioSeccionNavigation)
                .WithMany()
                .HasForeignKey(up => up.nIdUsuarioSeccion);
        }
    }
}
