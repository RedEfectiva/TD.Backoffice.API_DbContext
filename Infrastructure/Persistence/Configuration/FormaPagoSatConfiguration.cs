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
    public class FormaPagoSatConfiguration : IEntityTypeConfiguration<FormaPagoSat>
{
    public void Configure(EntityTypeBuilder<FormaPagoSat> builder)
    {
        builder.ToTable("FormaPagoSat");

        builder.HasKey(e => e.IdFormaPagoSat);

        builder.Property(e => e.IdFormaPagoSat)
            .HasColumnName("idFormaPagoSat")
            .IsRequired();

        builder.Property(e => e.SFormaPago)
            .HasColumnName("sFormaPago")
            .HasMaxLength(150);

        builder.Property(e => e.SDescripcion)
            .HasColumnName("sDescripcion")
            .HasMaxLength(150);

        builder.HasOne(c => c.EsquemaCobro)
            .WithOne(e => e.FormaPagoSat)
            .HasForeignKey<EsquemaCobro>(e => e.FormaPagoSatId)
            .OnDelete(DeleteBehavior.Cascade);
    }
}
}
