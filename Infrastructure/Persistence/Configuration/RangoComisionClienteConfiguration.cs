using TD.Backoffice.API_DbContext.Domain.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Backoffice.Infrastructure.Persistence.Configuration
{
    public partial class RangoComisionClienteConfiguration : IEntityTypeConfiguration<RangoComisionCliente>
    {
        public void Configure(EntityTypeBuilder<RangoComisionCliente> builder)
        {
            builder.ToTable("RangoComisionCliente");

            builder.HasKey(d => d.IdRangoComisionCliente);
            builder.Ignore(c => c.Id);

            builder.Property(c => c.UpdatedAt)
             .HasColumnType("datetime")
             .HasDefaultValueSql("CURRENT_TIMESTAMP")
             .ValueGeneratedOnAddOrUpdate();

            builder.Property(c => c.CreatedAt)
                   .HasColumnType("datetime")
                   .HasDefaultValueSql("CURRENT_TIMESTAMP")
                   .ValueGeneratedOnAdd();

            builder.HasOne(d => d.Cliente)
                .WithMany(c => c.RangoComisionCliente)
                .HasForeignKey(d => d.ClienteId)
                .OnDelete(DeleteBehavior.Cascade);
        }
    }
}
