namespace Backoffice.Infrastructure.Persistence.Configuration
{
    using TD.Backoffice.API_DbContext.Domain.Entities;
    using Microsoft.EntityFrameworkCore.Metadata.Builders;
    using Microsoft.EntityFrameworkCore;

    public class UsuarioPerfilConfiguration : IEntityTypeConfiguration<UsuarioPerfil>
    {
        public void Configure(EntityTypeBuilder<UsuarioPerfil> builder)
        {
            builder.ToTable("UsuarioPerfil");

            builder.HasKey(up => up.nIdPerfil);

            builder.HasIndex(up => up.sNombre)
                .IsUnique()
                .HasDatabaseName("IX_UsuarioPerfil_Nombre");

            builder.Property(up => up.sNombre)
                .IsRequired()
                .HasMaxLength(128);

            builder.Property(up => up.sDescripcion)
                .IsRequired()
                .HasMaxLength(500);

            builder.Property(up => up.CreatedAt)
                .IsRequired();

            builder.Property(up => up.UpdatedAt)
                .IsRequired(false);

            builder.Property(up => up.UpdatedAt)
                .IsRequired(false);

            builder.HasMany(e => e.UsuarioProcesos)
                .WithMany(e => e.UsuarioPerfiles)
                .UsingEntity<UsuarioPerfilProceso>();
        }
    }
}
