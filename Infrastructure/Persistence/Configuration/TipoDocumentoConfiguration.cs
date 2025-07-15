using TD.Backoffice.API_DbContext.Domain.Entities;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Backoffice.Infrastructure.Persistence.Configuration
{
    public class TipoDocumentoConfiguration : IEntityTypeConfiguration<TipoDocumento>
    {
        public void Configure(EntityTypeBuilder<TipoDocumento> builder)
        {
            builder.ToTable("TipoDocumentos");

            builder.HasKey(c => c.IdTipoDocumento);

            builder.Property(c => c.Clave)
                .IsRequired()
                .HasMaxLength(255);

            builder.Property(c => c.Descripcion)
                .IsRequired()
                .HasMaxLength(255);

            builder.Property(c => c.Activo);

            builder.HasMany(c => c.Documentos)
                .WithOne(d => d.TipoDocumento)
                .HasForeignKey(d => d.TipoDocumentoId)
                .OnDelete(DeleteBehavior.Cascade);
        }
    }
}
