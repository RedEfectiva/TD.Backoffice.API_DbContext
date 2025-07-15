using TD.Backoffice.API_DbContext.Domain.Entities;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Reflection.Emit;

namespace Backoffice.Infrastructure.Persistence.Configuration
{
    public class MetodoPagoSatConfiguration : IEntityTypeConfiguration<MetodoPagoSat>
    {
        public void Configure(EntityTypeBuilder<MetodoPagoSat> builder)
        {
            builder.ToTable("MetodoPagoSat");

            builder.HasKey(e => e.IdMetodoPagoSat);

            builder.Property(e => e.IdMetodoPagoSat)
                .HasColumnName("IdMetodoPagoSat")
                .IsRequired();

            builder.Property(e => e.SMetodoPago)
                .HasColumnName("sMetodoPago")
                .HasMaxLength(150);

            builder.Property(e => e.SDescripcion)
                .HasColumnName("sDescripcion")
                .HasMaxLength(150);

            builder.HasOne(c => c.EsquemaCobro)
                .WithOne(e => e.MetodoPagoSat)
                .HasForeignKey<EsquemaCobro>(e => e.MetodoPagoSatId)
                .OnDelete(DeleteBehavior.Cascade);
        }
    }
}
