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
    public class ProductoServicioSatConfiguration : IEntityTypeConfiguration<ProductoServicioSat>
{
    public void Configure(EntityTypeBuilder<ProductoServicioSat> builder)
    {
        builder.ToTable("ProductoServicioSat");

        builder.HasKey(e => e.IdProductoServicioSat);

        builder.Property(e => e.IdProductoServicioSat)
            .HasColumnName("idProductoServicioSat")
            .IsRequired();

        builder.Property(e => e.SClaveProducto)
            .HasColumnName("sClaveProducto")
            .HasMaxLength(150);

        builder.Property(e => e.SDescripcion)
            .HasColumnName("sDescripcion")
            .HasMaxLength(150);

        builder.Property(e => e.DInicioVigencia)
            .HasColumnName("dInicioVigencia");

        builder.Property(e => e.DFinVigencia)
            .HasColumnName("dFinVigencia");

        builder.Property(e => e.SIVATrasladado)
            .HasColumnName("sIVATrasladado")
            .HasMaxLength(150);

        builder.Property(e => e.SIEPSTrasladado)
            .HasColumnName("sIEPSTrasladado")
            .HasMaxLength(150);

        builder.Property(e => e.SComplemento)
            .HasColumnName("strComplemento")
            .HasMaxLength(150);

        builder.HasOne(c => c.EsquemaCobro)
            .WithOne(e => e.ProductoServicioSat)
            .HasForeignKey<EsquemaCobro>(e => e.ProductoServicioSatId)
            .OnDelete(DeleteBehavior.Cascade);
    }
}
}
