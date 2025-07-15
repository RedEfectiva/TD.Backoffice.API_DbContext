namespace Backoffice.Infrastructure.Persistence.Configuration
{
    using TD.Backoffice.API_DbContext.Domain.Entities;
    using Microsoft.EntityFrameworkCore.Metadata.Builders;
    using Microsoft.EntityFrameworkCore;

    public class UsuarioProcesoConfiguration : IEntityTypeConfiguration<UsuarioProceso>
    {
        public void Configure(EntityTypeBuilder<UsuarioProceso> builder)
        {
            builder.ToTable("UsuarioProceso");

            builder.HasKey(up => up.nIdUsuarioProceso);

            builder.HasIndex(up => up.sNombre)
                .IsUnique()
                .HasDatabaseName("IX_UsuarioProceso_Nombre");

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

            builder.HasMany(e => e.UsuarioPerfiles)
                .WithMany(e => e.UsuarioProcesos)
                .UsingEntity<UsuarioPerfilProceso>();

            builder.HasOne(up => up.UsuarioProcesoPadre)
                .WithMany()
                .HasForeignKey(up => up.nIdUsuarioProcesoPadre);
        }
    }
}
