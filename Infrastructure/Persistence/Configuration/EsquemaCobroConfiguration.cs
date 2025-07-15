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
    public class EsquemaCobroConfiguration : IEntityTypeConfiguration<EsquemaCobro>
    {
        public void Configure(EntityTypeBuilder<EsquemaCobro> builder)
        {
            builder.ToTable("EsquemaCobro");

            builder.HasKey(e => e.Id);

            builder.HasOne(e => e.RegimenFiscal)
                .WithMany(c => c.EsquemaCobros)
                .HasForeignKey(e => e.IdRegimenFiscal)
                .HasConstraintName("FK_EsquemaCobro_RegimenFiscal")
                .OnDelete(DeleteBehavior.Restrict);

            builder.Property(e => e.IdRegimenFiscal)
                .HasColumnName("IdRegimenFiscal");

            builder.HasOne(e => e.CFDI)
          .WithMany(c => c.EsquemaCobros)
          .HasForeignKey(e => e.IdCFDI)
          .HasConstraintName("FK_EsquemaCobro_CFDI")
          .OnDelete(DeleteBehavior.Restrict);

            builder.Property(e => e.IdCFDI)
                .HasColumnName("IdCFDI");



        }
    }
}
