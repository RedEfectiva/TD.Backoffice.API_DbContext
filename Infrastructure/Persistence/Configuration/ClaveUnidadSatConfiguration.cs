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
    public class ClaveUnidadSatConfiguration : IEntityTypeConfiguration<ClaveUnidadSat>
{
    public void Configure(EntityTypeBuilder<ClaveUnidadSat> builder)
    {
        builder.ToTable("ClaveUnidadSat");

        builder.HasKey(e => e.IdClaveUnidadSat);

        builder.Property(e => e.IdClaveUnidadSat)
            .HasColumnName("idClaveUnidadSat")
            .IsRequired();

        builder.Property(e => e.SUnidad)
            .HasColumnName("sUnidad")
            .HasMaxLength(150);

        builder.Property(e => e.SNombre)
            .HasColumnName("sNombre")
            .HasMaxLength(150);

        builder.Property(e => e.SDescripcion)
            .HasColumnName("sDescripcion")
            .HasMaxLength(150);

        builder.Property(e => e.DInicioVigencia)
            .HasColumnName("dInicioVigencia");

        builder.Property(e => e.DFinVigencia)
            .HasColumnName("dFinVigencia");

        builder.Property(e => e.SSimbolo)
            .HasColumnName("sSimbolo")
            .HasMaxLength(150);

        builder.HasOne(c => c.EsquemaCobro)
            .WithOne(e => e.ClaveUnidadSat)
            .HasForeignKey<EsquemaCobro>(e => e.ClaveUnidadSatId)
            .OnDelete(DeleteBehavior.Cascade);
    }
}
}
