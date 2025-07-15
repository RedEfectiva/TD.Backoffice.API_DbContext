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
    public class DocumentosConfiguration : IEntityTypeConfiguration<Documentos>
    {
        public void Configure(EntityTypeBuilder<Documentos> builder)
        {
            builder.ToTable("Documentos");

            builder.HasKey(d => d.IdDocumento);

            builder.HasOne(d => d.Cliente)
                .WithMany(c => c.Documentos)
                .HasForeignKey(d => d.ClienteId)
                .OnDelete(DeleteBehavior.Cascade);
            
            builder.HasOne(d => d.TipoDocumento)
                .WithMany(c => c.Documentos)
                .HasForeignKey(d => d.TipoDocumentoId)
                .OnDelete(DeleteBehavior.Cascade);
        }
    }
}
