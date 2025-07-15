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
    public class DatosGeneralesConfiguration : IEntityTypeConfiguration<DatosGenerales>
    {
        public void Configure(EntityTypeBuilder<DatosGenerales> builder)
        {
            builder.ToTable("DatosGenerales");

            builder.HasKey(d => d.IdDatosGenerales);

            builder.HasOne(d => d.Cliente)
                .WithOne(c => c.DatosGenerales)
                .HasForeignKey<DatosGenerales>(d => d.ClienteId)
                .OnDelete(DeleteBehavior.Cascade);

            builder.HasOne(d => d.Direccion)
                .WithOne(c => c.DatosGenerales)
                .HasForeignKey<DatosGenerales>(d => d.DireccionId)
                .OnDelete(DeleteBehavior.Cascade);
        }
    }
}
