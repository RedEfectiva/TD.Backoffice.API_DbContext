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
    public partial class ComisionClienteConfiguration : IEntityTypeConfiguration<ComisionCliente>
    {
        public void Configure(EntityTypeBuilder<ComisionCliente> builder)
        {
            builder.ToTable("ComisionCliente");

            builder.HasKey(d => d.IdComisionCliente);
            builder.Ignore(c => c.Id);

            builder.Property(c => c.UpdatedAt)
             .HasColumnType("datetime")
             .HasDefaultValueSql("CURRENT_TIMESTAMP")
             .ValueGeneratedOnAddOrUpdate();

            builder.Property(c => c.CreatedAt)
                   .HasColumnType("datetime")
                   .HasDefaultValueSql("CURRENT_TIMESTAMP")
                   .ValueGeneratedOnAdd();
        }
    }
}
